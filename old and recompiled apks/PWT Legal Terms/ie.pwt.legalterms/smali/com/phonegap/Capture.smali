.class public Lcom/phonegap/Capture;
.super Lcom/phonegap/api/Plugin;
.source "Capture.java"


# static fields
.field private static final CAPTURE_AUDIO:I = 0x0

.field private static final CAPTURE_IMAGE:I = 0x1

.field private static final CAPTURE_VIDEO:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "Capture"

.field private static final _DATA:Ljava/lang/String; = "_data"


# instance fields
.field private callbackId:Ljava/lang/String;

.field private duration:D

.field private imageUri:Landroid/net/Uri;

.field private limit:J

.field private results:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    return-void
.end method

.method private captureAudio()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/phonegap/Capture;->ctx:Lcom/phonegap/api/PhonegapActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/phonegap/api/PhonegapActivity;->startActivityForResult(Lcom/phonegap/api/Plugin;Landroid/content/Intent;I)V

    .line 162
    return-void
.end method

.method private captureImage()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Capture.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v1, "photo":Ljava/io/File;
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/phonegap/Capture;->imageUri:Landroid/net/Uri;

    .line 175
    iget-object v2, p0, Lcom/phonegap/Capture;->ctx:Lcom/phonegap/api/PhonegapActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v0, v3}, Lcom/phonegap/api/PhonegapActivity;->startActivityForResult(Lcom/phonegap/api/Plugin;Landroid/content/Intent;I)V

    .line 176
    return-void
.end method

.method private captureVideo(D)V
    .locals 3
    .param p1, "duration"    # D

    .prologue
    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/phonegap/Capture;->ctx:Lcom/phonegap/api/PhonegapActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Lcom/phonegap/api/PhonegapActivity;->startActivityForResult(Lcom/phonegap/api/Plugin;Landroid/content/Intent;I)V

    .line 187
    return-void
.end method

.method private createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 312
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/phonegap/Capture;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "fp":Ljava/io/File;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v3, "fullPath"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v3, "type"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/phonegap/FileUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v3, "lastModifiedDate"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 322
    const-string v3, "size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-object v2

    .line 323
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 325
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAudioVideoData(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "obj"    # Lorg/json/JSONObject;
    .param p3, "video"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 141
    .local v1, "player":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 143
    const-string v2, "duration"

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    if-eqz p3, :cond_0

    .line 145
    const-string v2, "height"

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    const-string v2, "width"

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-object p2

    .line 149
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Capture"

    const-string v3, "Error: loading video file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFormatData(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "height"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v2, "width"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v2, "bitrate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string v2, "duration"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v2, "codecs"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v2, "image/jpeg"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-direct {p0, p1, v1}, Lcom/phonegap/Capture;->getImageData(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 101
    :cond_1
    const-string v2, "audio/3gpp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/phonegap/Capture;->getAudioVideoData(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    .line 104
    :cond_2
    const-string v2, "video/3gpp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/phonegap/Capture;->getAudioVideoData(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 109
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "Capture"

    const-string v3, "Error: setting media file data object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getImageData(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const-string v1, "height"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v1, "width"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    return-object p2
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 338
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 339
    .local v2, "proj":[Ljava/lang/String;
    iget-object v0, p0, Lcom/phonegap/Capture;->ctx:Lcom/phonegap/api/PhonegapActivity;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/phonegap/api/PhonegapActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 340
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 341
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 342
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 47
    iput-object p3, p0, Lcom/phonegap/Capture;->callbackId:Ljava/lang/String;

    .line 48
    iput-wide v9, p0, Lcom/phonegap/Capture;->limit:J

    .line 49
    iput-wide v6, p0, Lcom/phonegap/Capture;->duration:D

    .line 50
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iput-object v4, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    .line 52
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    .local v2, "options":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 54
    const-string v4, "limit"

    invoke-virtual {v2, v4, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/phonegap/Capture;->limit:J

    .line 55
    const-string v4, "duration"

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/phonegap/Capture;->duration:D

    .line 58
    :cond_0
    const-string v4, "getFormatData"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/phonegap/Capture;->getFormatData(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 61
    .local v1, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/phonegap/api/PluginResult;

    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v4, v5, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 62
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/phonegap/api/PluginResult;

    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0

    .line 66
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v4, "captureAudio"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 67
    invoke-direct {p0}, Lcom/phonegap/Capture;->captureAudio()V

    .line 76
    :cond_2
    :goto_1
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->NO_RESULT:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v3, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 77
    .local v3, "r":Lcom/phonegap/api/PluginResult;
    invoke-virtual {v3, v8}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    move-object v4, v3

    .line 78
    goto :goto_0

    .line 69
    .end local v3    # "r":Lcom/phonegap/api/PluginResult;
    :cond_3
    const-string v4, "captureImage"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    invoke-direct {p0}, Lcom/phonegap/Capture;->captureImage()V

    goto :goto_1

    .line 72
    :cond_4
    const-string v4, "captureVideo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    iget-wide v4, p0, Lcom/phonegap/Capture;->duration:D

    invoke-direct {p0, v4, v5}, Lcom/phonegap/Capture;->captureVideo(D)V

    goto :goto_1
.end method

.method public fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 351
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v1, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/phonegap/Capture;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/Capture;->error(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    const/4 v7, -0x1

    if-ne p2, v7, :cond_6

    .line 203
    if-nez p1, :cond_2

    .line 205
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 207
    .local v1, "data":Landroid/net/Uri;
    iget-object v7, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {p0, v1}, Lcom/phonegap/Capture;->createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 209
    iget-object v7, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    int-to-long v7, v7

    iget-wide v9, p0, Lcom/phonegap/Capture;->limit:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_1

    .line 211
    new-instance v7, Lcom/phonegap/api/PluginResult;

    sget-object v8, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    iget-object v9, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    const-string v10, "navigator.device.capture._castMediaFile"

    invoke-direct {v7, v8, v9, v10}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/phonegap/Capture;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/phonegap/Capture;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V

    .line 303
    .end local v1    # "data":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 214
    .restart local v1    # "data":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0}, Lcom/phonegap/Capture;->captureAudio()V

    goto :goto_0

    .line 216
    .end local v1    # "data":Landroid/net/Uri;
    :cond_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_4

    .line 223
    :try_start_0
    iget-object v7, p0, Lcom/phonegap/Capture;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v7}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/phonegap/Capture;->imageUri:Landroid/net/Uri;

    invoke-static {v7, v8}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 228
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "mime_type"

    const-string v8, "image/jpeg"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    const/4 v5, 0x0

    .line 231
    .local v5, "uri":Landroid/net/Uri;
    :try_start_1
    iget-object v7, p0, Lcom/phonegap/Capture;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v7}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 244
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/phonegap/Capture;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v7}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v4

    .line 245
    .local v4, "os":Ljava/io/OutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 246
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 248
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 249
    const/4 v0, 0x0

    .line 250
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 253
    iget-object v7, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {p0, v5}, Lcom/phonegap/Capture;->createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 255
    iget-object v7, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    int-to-long v7, v7

    iget-wide v9, p0, Lcom/phonegap/Capture;->limit:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_3

    .line 257
    new-instance v7, Lcom/phonegap/api/PluginResult;

    sget-object v8, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    iget-object v9, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    const-string v10, "navigator.device.capture._castMediaFile"

    invoke-direct {v7, v8, v9, v10}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/phonegap/Capture;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/phonegap/Capture;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 262
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 263
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    const-string v7, "Error capturing image."

    invoke-virtual {p0, v7}, Lcom/phonegap/Capture;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 233
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Can\'t write to external media storage."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 235
    :try_start_4
    iget-object v7, p0, Lcom/phonegap/Capture;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v7}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v5

    goto :goto_1

    .line 236
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 237
    .local v3, "ex":Ljava/lang/UnsupportedOperationException;
    :try_start_5
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Can\'t write to internal media storage."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    const-string v7, "Error capturing image - no media storage found."

    invoke-virtual {p0, v7}, Lcom/phonegap/Capture;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v3    # "ex":Ljava/lang/UnsupportedOperationException;
    .restart local v4    # "os":Ljava/io/OutputStream;
    :cond_3
    invoke-direct {p0}, Lcom/phonegap/Capture;->captureImage()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 266
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 268
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 270
    .restart local v1    # "data":Landroid/net/Uri;
    iget-object v7, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    invoke-direct {p0, v1}, Lcom/phonegap/Capture;->createMediaFile(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 272
    iget-object v7, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    int-to-long v7, v7

    iget-wide v9, p0, Lcom/phonegap/Capture;->limit:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_5

    .line 274
    new-instance v7, Lcom/phonegap/api/PluginResult;

    sget-object v8, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    iget-object v9, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    const-string v10, "navigator.device.capture._castMediaFile"

    invoke-direct {v7, v8, v9, v10}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/phonegap/Capture;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/phonegap/Capture;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_5
    iget-wide v7, p0, Lcom/phonegap/Capture;->duration:D

    invoke-direct {p0, v7, v8}, Lcom/phonegap/Capture;->captureVideo(D)V

    goto/16 :goto_0

    .line 282
    .end local v1    # "data":Landroid/net/Uri;
    :cond_6
    if-nez p2, :cond_8

    .line 284
    iget-object v7, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 285
    new-instance v7, Lcom/phonegap/api/PluginResult;

    sget-object v8, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    iget-object v9, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    const-string v10, "navigator.device.capture._castMediaFile"

    invoke-direct {v7, v8, v9, v10}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/phonegap/Capture;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/phonegap/Capture;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_7
    const-string v7, "Canceled."

    invoke-virtual {p0, v7}, Lcom/phonegap/Capture;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_8
    iget-object v7, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 296
    new-instance v7, Lcom/phonegap/api/PluginResult;

    sget-object v8, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    iget-object v9, p0, Lcom/phonegap/Capture;->results:Lorg/json/JSONArray;

    const-string v10, "navigator.device.capture._castMediaFile"

    invoke-direct {v7, v8, v9, v10}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/phonegap/Capture;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v7, v8}, Lcom/phonegap/Capture;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :cond_9
    const-string v7, "Did not complete!"

    invoke-virtual {p0, v7}, Lcom/phonegap/Capture;->fail(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
