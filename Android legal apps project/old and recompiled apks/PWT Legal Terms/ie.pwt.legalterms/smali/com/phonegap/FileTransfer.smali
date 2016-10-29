.class public Lcom/phonegap/FileTransfer;
.super Lcom/phonegap/api/Plugin;
.source "FileTransfer.java"


# static fields
.field private static final BOUNDRY:Ljava/lang/String; = "*****"

.field public static CONNECTION_ERR:I = 0x0

.field static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field public static FILE_NOT_FOUND_ERR:I = 0x0

.field public static INVALID_URL_ERR:I = 0x0

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field private static final LINE_START:Ljava/lang/String; = "--"

.field private static final LOG_TAG:Ljava/lang/String; = "FileUploader"


# instance fields
.field private defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput v0, Lcom/phonegap/FileTransfer;->FILE_NOT_FOUND_ERR:I

    .line 50
    const/4 v0, 0x2

    sput v0, Lcom/phonegap/FileTransfer;->INVALID_URL_ERR:I

    .line 51
    const/4 v0, 0x3

    sput v0, Lcom/phonegap/FileTransfer;->CONNECTION_ERR:I

    .line 116
    new-instance v0, Lcom/phonegap/FileTransfer$1;

    invoke-direct {v0}, Lcom/phonegap/FileTransfer$1;-><init>()V

    sput-object v0, Lcom/phonegap/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/phonegap/FileTransfer;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 54
    iput-object v0, p0, Lcom/phonegap/FileTransfer;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method private createFileUploadError(I)Lorg/json/JSONObject;
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, "error":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "error":Lorg/json/JSONObject;
    .local v2, "error":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "code"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 172
    .end local v2    # "error":Lorg/json/JSONObject;
    .restart local v1    # "error":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string v3, "FileUploader"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "error":Lorg/json/JSONObject;
    .restart local v2    # "error":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "error":Lorg/json/JSONObject;
    .restart local v1    # "error":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "position"    # I
    .param p3, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 183
    move-object v0, p3

    .line 184
    .local v0, "arg":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, p2, :cond_1

    .line 185
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    move-object v0, p3

    .line 190
    :cond_1
    return-object v0
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 356
    const-string v1, "content:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 358
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/phonegap/FileTransfer;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 361
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trustAllHosts()V
    .locals 5

    .prologue
    .line 132
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/phonegap/FileTransfer$2;

    invoke-direct {v4, p0}, Lcom/phonegap/FileTransfer$2;-><init>(Lcom/phonegap/FileTransfer;)V

    aput-object v4, v2, v3

    .line 149
    .local v2, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/phonegap/FileTransfer;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 151
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 152
    .local v1, "sc":Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 153
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "sc":Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FileUploader"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "file":Ljava/lang/String;
    const/4 v2, 0x0

    .line 64
    .local v2, "server":Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, "fileKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 75
    .local v4, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 77
    .local v5, "mimeType":Ljava/lang/String;
    const/4 v0, 0x2

    const-string v3, "file"

    .end local v3    # "fileKey":Ljava/lang/String;
    invoke-direct {p0, p2, v0, v3}, Lcom/phonegap/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .restart local v3    # "fileKey":Ljava/lang/String;
    const/4 v0, 0x3

    const-string v4, "image.jpg"

    .end local v4    # "fileName":Ljava/lang/String;
    invoke-direct {p0, p2, v0, v4}, Lcom/phonegap/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .restart local v4    # "fileName":Ljava/lang/String;
    const/4 v0, 0x4

    const-string v5, "image/jpeg"

    .end local v5    # "mimeType":Ljava/lang/String;
    invoke-direct {p0, p2, v0, v5}, Lcom/phonegap/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 82
    .restart local v5    # "mimeType":Ljava/lang/String;
    const/4 v0, 0x5

    :try_start_1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 83
    .local v6, "params":Lorg/json/JSONObject;
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v7

    .line 85
    .local v7, "trustEveryone":Z
    const-string v0, "upload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 86
    invoke-virtual/range {v0 .. v7}, Lcom/phonegap/FileTransfer;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/phonegap/FileUploadResult;

    move-result-object v10

    .line 87
    .local v10, "r":Lcom/phonegap/FileUploadResult;
    const-string v0, "FileUploader"

    const-string v3, "****** About to return a result from upload"

    .end local v3    # "fileKey":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-virtual {v10}, Lcom/phonegap/FileUploadResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .end local v4    # "fileName":Ljava/lang/String;
    invoke-direct {v0, v3, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    .line 111
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "params":Lorg/json/JSONObject;
    .end local v7    # "trustEveryone":Z
    .end local v10    # "r":Lcom/phonegap/FileUploadResult;
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 68
    .local v8, "e":Lorg/json/JSONException;
    const-string v0, "FileUploader"

    const-string v3, "Missing filename or server name"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    const-string v4, "Missing filename or server name"

    invoke-direct {v0, v3, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v3    # "fileKey":Ljava/lang/String;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "params":Lorg/json/JSONObject;
    .restart local v7    # "trustEveryone":Z
    :cond_0
    :try_start_2
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->INVALID_ACTION:Lcom/phonegap/api/PluginResult$Status;

    .end local v3    # "fileKey":Ljava/lang/String;
    invoke-direct {v0, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 92
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v6    # "params":Lorg/json/JSONObject;
    .end local v7    # "trustEveryone":Z
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 93
    .local v8, "e":Ljava/io/FileNotFoundException;
    const-string v0, "FileUploader"

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    sget v0, Lcom/phonegap/FileTransfer;->FILE_NOT_FOUND_ERR:I

    invoke-direct {p0, v0}, Lcom/phonegap/FileTransfer;->createFileUploadError(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 95
    .local v9, "error":Lorg/json/JSONObject;
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->IO_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v3, v9}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 96
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 97
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v0, "FileUploader"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    sget v0, Lcom/phonegap/FileTransfer;->INVALID_URL_ERR:I

    invoke-direct {p0, v0}, Lcom/phonegap/FileTransfer;->createFileUploadError(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 99
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->IO_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v3, v9}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 100
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    move-object v8, v0

    .line 101
    .local v8, "e":Ljavax/net/ssl/SSLException;
    const-string v0, "FileUploader"

    invoke-virtual {v8}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const-string v0, "FileUploader"

    const-string v3, "Got my ssl exception!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget v0, Lcom/phonegap/FileTransfer;->CONNECTION_ERR:I

    invoke-direct {p0, v0}, Lcom/phonegap/FileTransfer;->createFileUploadError(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 104
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->IO_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v3, v9}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 105
    .end local v8    # "e":Ljavax/net/ssl/SSLException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :catch_4
    move-exception v0

    move-object v8, v0

    .line 106
    .local v8, "e":Ljava/io/IOException;
    const-string v0, "FileUploader"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    sget v0, Lcom/phonegap/FileTransfer;->CONNECTION_ERR:I

    invoke-direct {p0, v0}, Lcom/phonegap/FileTransfer;->createFileUploadError(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 108
    .restart local v9    # "error":Lorg/json/JSONObject;
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->IO_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v3, v9}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 109
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "error":Lorg/json/JSONObject;
    :catch_5
    move-exception v0

    move-object v8, v0

    .line 110
    .local v8, "e":Lorg/json/JSONException;
    const-string v0, "FileUploader"

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto/16 :goto_0
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/phonegap/FileUploadResult;
    .locals 26
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "fileKey"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "params"    # Lorg/json/JSONObject;
    .param p7, "trustEveryone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v20, Lcom/phonegap/FileUploadResult;

    invoke-direct/range {v20 .. v20}, Lcom/phonegap/FileUploadResult;-><init>()V

    .line 210
    .local v20, "result":Lcom/phonegap/FileUploadResult;
    invoke-direct/range {p0 .. p1}, Lcom/phonegap/FileTransfer;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 212
    .local v12, "fileInputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 213
    .local v8, "conn":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 218
    .local v10, "dos":Ljava/io/DataOutputStream;
    const/16 v18, 0x1fa0

    .line 222
    .local v18, "maxBufferSize":I
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 225
    .local v23, "url":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "https"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 227
    if-nez p7, :cond_2

    .line 228
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    .line 249
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    :goto_0
    const/16 v24, 0x1

    move-object v0, v8

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 252
    const/16 v24, 0x1

    move-object v0, v8

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 255
    const/16 v24, 0x0

    move-object v0, v8

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 258
    const-string v24, "POST"

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 259
    const-string v24, "Connection"

    const-string v25, "Keep-Alive"

    move-object v0, v8

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v24, "Content-Type"

    const-string v25, "multipart/form-data;boundary=*****"

    move-object v0, v8

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, "cookie":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 265
    const-string v24, "Cookie"

    move-object v0, v8

    move-object/from16 v1, v24

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    new-instance v10, Ljava/io/DataOutputStream;

    .end local v10    # "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v24

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 272
    .restart local v10    # "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 273
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 274
    .local v16, "key":Ljava/lang/Object;
    const-string v24, "--*****\r\n"

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 275
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 276
    const-string v24, "\r\n\r\n"

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 278
    const-string v24, "\r\n"

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 280
    .end local v15    # "iter":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v24

    move-object/from16 v11, v24

    .line 281
    .local v11, "e":Lorg/json/JSONException;
    const-string v24, "FileUploader"

    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v11    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v24, "--*****\r\n"

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 285
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " filename=\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 286
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Content-Type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\r\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 287
    const-string v24, "\r\n"

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 291
    .local v6, "bytesAvailable":I
    move v0, v6

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 292
    .local v5, "bufferSize":I
    new-array v4, v5, [B

    .line 295
    .local v4, "buffer":[B
    const/16 v24, 0x0

    move-object v0, v12

    move-object v1, v4

    move/from16 v2, v24

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 296
    .local v7, "bytesRead":I
    const-wide/16 v21, 0x0

    .line 298
    .local v21, "totalBytes":J
    :goto_2
    if-lez v7, :cond_4

    .line 299
    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v21, v21, v24

    .line 300
    invoke-virtual/range {v20 .. v22}, Lcom/phonegap/FileUploadResult;->setBytesSent(J)V

    .line 301
    const/16 v24, 0x0

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v24

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 302
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 303
    move v0, v6

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 304
    const/16 v24, 0x0

    move-object v0, v12

    move-object v1, v4

    move/from16 v2, v24

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    goto :goto_2

    .line 234
    .end local v4    # "buffer":[B
    .end local v5    # "bufferSize":I
    .end local v6    # "bytesAvailable":I
    .end local v7    # "bytesRead":I
    .end local v9    # "cookie":Ljava/lang/String;
    .end local v21    # "totalBytes":J
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/phonegap/FileTransfer;->trustAllHosts()V

    .line 235
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    .line 237
    .local v13, "https":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v13}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/phonegap/FileTransfer;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 239
    sget-object v24, Lcom/phonegap/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 240
    move-object v8, v13

    .line 241
    goto/16 :goto_0

    .line 245
    .end local v13    # "https":Ljavax/net/ssl/HttpsURLConnection;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    check-cast v8, Ljava/net/HttpURLConnection;

    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 308
    .restart local v4    # "buffer":[B
    .restart local v5    # "bufferSize":I
    .restart local v6    # "bytesAvailable":I
    .restart local v7    # "bytesRead":I
    .restart local v9    # "cookie":Ljava/lang/String;
    .restart local v21    # "totalBytes":J
    :cond_4
    const-string v24, "\r\n"

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 309
    const-string v24, "--*****--\r\n"

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 313
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 314
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 317
    new-instance v19, Ljava/lang/StringBuffer;

    const-string v24, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 320
    .local v19, "responseString":Ljava/lang/StringBuffer;
    :try_start_1
    new-instance v14, Ljava/io/DataInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    move-object v0, v14

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 326
    .local v14, "inStream":Ljava/io/DataInputStream;
    :goto_3
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "line":Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 327
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 321
    .end local v14    # "inStream":Ljava/io/DataInputStream;
    .end local v17    # "line":Ljava/lang/String;
    :catch_1
    move-exception v24

    move-object/from16 v11, v24

    .line 322
    .local v11, "e":Ljava/io/FileNotFoundException;
    new-instance v24, Ljava/io/IOException;

    const-string v25, "Received error from server"

    invoke-direct/range {v24 .. v25}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 329
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .restart local v14    # "inStream":Ljava/io/DataInputStream;
    .restart local v17    # "line":Ljava/lang/String;
    :cond_5
    const-string v24, "FileUploader"

    const-string v25, "got response from server"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v24, "FileUploader"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/phonegap/FileUploadResult;->setResponseCode(I)V

    .line 334
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/phonegap/FileUploadResult;->setResponse(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    .line 337
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 340
    if-eqz p7, :cond_6

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "https"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 341
    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/FileTransfer;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v24, v0

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phonegap/FileTransfer;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 345
    :cond_6
    return-object v20
.end method
