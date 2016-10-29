.class public Lcom/phonegap/NetworkManager;
.super Lcom/phonegap/api/Plugin;
.source "NetworkManager.java"


# static fields
.field public static final CDMA:Ljava/lang/String; = "cdma"

.field public static final EDGE:Ljava/lang/String; = "edge"

.field public static final GPRS:Ljava/lang/String; = "gprs"

.field public static final GSM:Ljava/lang/String; = "gsm"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkManager"

.field public static final LTE:Ljava/lang/String; = "lte"

.field public static final MOBILE:Ljava/lang/String; = "mobile"

.field public static NOT_REACHABLE:I = 0x0

.field public static REACHABLE_VIA_CARRIER_DATA_NETWORK:I = 0x0

.field public static REACHABLE_VIA_WIFI_NETWORK:I = 0x0

.field public static final TYPE_2G:Ljava/lang/String; = "2g"

.field public static final TYPE_3G:Ljava/lang/String; = "3g"

.field public static final TYPE_4G:Ljava/lang/String; = "4g"

.field public static final TYPE_ETHERNET:Ljava/lang/String; = "ethernet"

.field public static final TYPE_NONE:Ljava/lang/String; = "none"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final UMB:Ljava/lang/String; = "umb"

.field public static final UMTS:Ljava/lang/String; = "umts"

.field public static final WIFI:Ljava/lang/String; = "wifi"

.field public static final WIMAX:Ljava/lang/String; = "wimax"


# instance fields
.field private connectionCallbackId:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;

.field sockMan:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/phonegap/NetworkManager;->NOT_REACHABLE:I

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/phonegap/NetworkManager;->REACHABLE_VIA_CARRIER_DATA_NETWORK:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/phonegap/NetworkManager;->REACHABLE_VIA_WIFI_NETWORK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/phonegap/NetworkManager;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/phonegap/NetworkManager;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/phonegap/NetworkManager;->updateConnectionInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private getConnectionInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 180
    const-string v0, "none"

    .line 181
    .local v0, "type":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    const-string v0, "none"

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    invoke-direct {p0, p1}, Lcom/phonegap/NetworkManager;->getType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getType(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 211
    if-eqz p1, :cond_6

    .line 212
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "wifi"

    .line 237
    .end local v0    # "type":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 217
    .restart local v0    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 218
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gprs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    :cond_1
    const-string v1, "2g"

    goto :goto_0

    .line 224
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    :cond_3
    const-string v1, "3g"

    goto :goto_0

    .line 228
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 230
    :cond_5
    const-string v1, "4g"

    goto :goto_0

    .line 235
    .end local v0    # "type":Ljava/lang/String;
    :cond_6
    const-string v1, "none"

    goto :goto_0

    .line 237
    .restart local v0    # "type":Ljava/lang/String;
    :cond_7
    const-string v1, "unknown"

    goto :goto_0
.end method

.method private sendUpdate(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v1, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 200
    .local v0, "result":Lcom/phonegap/api/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    .line 201
    iget-object v1, p0, Lcom/phonegap/NetworkManager;->connectionCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/NetworkManager;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private updateConnectionInfo(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/phonegap/NetworkManager;->getConnectionInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/phonegap/NetworkManager;->sendUpdate(Ljava/lang/String;)V

    .line 171
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 106
    .local v6, "status":Lcom/phonegap/api/PluginResult$Status;
    const-string v5, ""

    .line 108
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    const-string v7, "isAvailable"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/phonegap/NetworkManager;->isAvailable()Z

    move-result v0

    .line 110
    .local v0, "b":Z
    new-instance v7, Lcom/phonegap/api/PluginResult;

    invoke-direct {v7, v6, v0}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V

    .line 129
    .end local v0    # "b":Z
    :goto_0
    return-object v7

    .line 112
    :cond_0
    const-string v7, "isWifiActive"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/phonegap/NetworkManager;->isWifiActive()Z

    move-result v0

    .line 114
    .restart local v0    # "b":Z
    new-instance v7, Lcom/phonegap/api/PluginResult;

    invoke-direct {v7, v6, v0}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v0    # "b":Z
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 129
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Lcom/phonegap/api/PluginResult;

    sget-object v8, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v7, v8}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0

    .line 116
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string v7, "isReachable"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 117
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/phonegap/NetworkManager;->isReachable(Ljava/lang/String;Z)I

    move-result v2

    .line 118
    .local v2, "i":I
    new-instance v7, Lcom/phonegap/api/PluginResult;

    invoke-direct {v7, v6, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto :goto_0

    .line 120
    .end local v2    # "i":I
    :cond_2
    const-string v7, "getConnectionInfo"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 121
    iput-object p3, p0, Lcom/phonegap/NetworkManager;->connectionCallbackId:Ljava/lang/String;

    .line 122
    iget-object v7, p0, Lcom/phonegap/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 123
    .local v3, "info":Landroid/net/NetworkInfo;
    new-instance v4, Lcom/phonegap/api/PluginResult;

    invoke-direct {p0, v3}, Lcom/phonegap/NetworkManager;->getConnectionInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 124
    .local v4, "pluginResult":Lcom/phonegap/api/PluginResult;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    move-object v7, v4

    .line 125
    goto :goto_0

    .line 127
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "pluginResult":Lcom/phonegap/api/PluginResult;
    :cond_3
    new-instance v7, Lcom/phonegap/api/PluginResult;

    invoke-direct {v7, v6, v5}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    .line 246
    iget-object v2, p0, Lcom/phonegap/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 247
    .local v1, "info":Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 248
    .local v0, "conn":Z
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 251
    :cond_0
    return v0
.end method

.method public isReachable(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "isIpAddress"    # Z

    .prologue
    const/4 v5, -0x1

    .line 276
    sget v3, Lcom/phonegap/NetworkManager;->NOT_REACHABLE:I

    .line 278
    .local v3, "reachable":I
    const-string v4, "http://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v4, "https://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/phonegap/NetworkManager;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 285
    .local v1, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 286
    .local v2, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 288
    invoke-virtual {p0}, Lcom/phonegap/NetworkManager;->isWifiActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 289
    sget v3, Lcom/phonegap/NetworkManager;->REACHABLE_VIA_WIFI_NETWORK:I

    .line 299
    .end local v1    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :cond_1
    :goto_0
    return v3

    .line 292
    .restart local v1    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :cond_2
    sget v3, Lcom/phonegap/NetworkManager;->REACHABLE_VIA_CARRIER_DATA_NETWORK:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v1    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    sget v3, Lcom/phonegap/NetworkManager;->NOT_REACHABLE:I

    goto :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiActive()Z
    .locals 3

    .prologue
    .line 260
    iget-object v2, p0, Lcom/phonegap/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 261
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "type":Ljava/lang/String;
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 265
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/phonegap/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/phonegap/NetworkManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    iget-object v2, p0, Lcom/phonegap/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/phonegap/api/PhonegapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering network receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setContext(Lcom/phonegap/api/PhonegapActivity;)V
    .locals 2
    .param p1, "ctx"    # Lcom/phonegap/api/PhonegapActivity;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/phonegap/api/Plugin;->setContext(Lcom/phonegap/api/PhonegapActivity;)V

    .line 78
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/phonegap/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phonegap/NetworkManager;->connectionCallbackId:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/phonegap/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/phonegap/NetworkManager$1;

    invoke-direct {v1, p0}, Lcom/phonegap/NetworkManager$1;-><init>(Lcom/phonegap/NetworkManager;)V

    iput-object v1, p0, Lcom/phonegap/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 91
    iget-object v1, p0, Lcom/phonegap/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/phonegap/api/PhonegapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    :cond_0
    return-void
.end method
