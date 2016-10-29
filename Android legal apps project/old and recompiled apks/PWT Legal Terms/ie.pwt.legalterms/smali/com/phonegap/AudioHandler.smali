.class public Lcom/phonegap/AudioHandler;
.super Lcom/phonegap/api/Plugin;
.source "AudioHandler.java"


# instance fields
.field players:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/phonegap/AudioPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method private release(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 138
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->destroy()V

    .line 140
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 54
    .local v4, "status":Lcom/phonegap/api/PluginResult$Status;
    const-string v3, ""

    .line 57
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    const-string v5, "startRecordingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/phonegap/AudioHandler;->startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 90
    :goto_1
    return-object v5

    .line 60
    :cond_1
    const-string v5, "stopRecordingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/phonegap/AudioHandler;->stopRecordingAudio(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 89
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 90
    new-instance v5, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_1

    .line 63
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v5, "startPlayingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/phonegap/AudioHandler;->startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v5, "seekToAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 67
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/phonegap/AudioHandler;->seekToAudio(Ljava/lang/String;I)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v5, "pausePlayingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 70
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/phonegap/AudioHandler;->pausePlayingAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_5
    const-string v5, "stopPlayingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 73
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/phonegap/AudioHandler;->stopPlayingAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_6
    const-string v5, "getCurrentPositionAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 76
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/phonegap/AudioHandler;->getCurrentPositionAudio(Ljava/lang/String;)F

    move-result v2

    .line 77
    .local v2, "f":F
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 79
    .end local v2    # "f":F
    :cond_7
    const-string v5, "getDurationAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 80
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/phonegap/AudioHandler;->getDurationAudio(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 81
    .restart local v2    # "f":F
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 83
    .end local v2    # "f":F
    :cond_8
    const-string v5, "release"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/phonegap/AudioHandler;->release(Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, "b":Z
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v0}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getAudioOutputDevice()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->ctx:Lcom/phonegap/api/PhonegapActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 289
    .local v0, "audiMgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    .line 296
    :goto_0
    return v1

    .line 292
    :cond_0
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    move v1, v5

    .line 293
    goto :goto_0

    .line 296
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentPositionAudio(Ljava/lang/String;)F
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 235
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 238
    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getDurationAudio(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 252
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0, p2}, Lcom/phonegap/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    .line 260
    :goto_0
    return v1

    .line 258
    :cond_0
    new-instance v0, Lcom/phonegap/AudioPlayer;

    .end local v0    # "audio":Lcom/phonegap/AudioPlayer;
    invoke-direct {v0, p0, p1}, Lcom/phonegap/AudioPlayer;-><init>(Lcom/phonegap/AudioHandler;Ljava/lang/String;)V

    .line 259
    .restart local v0    # "audio":Lcom/phonegap/AudioPlayer;
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {v0, p2}, Lcom/phonegap/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 101
    const-string v0, "getCurrentPositionAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 104
    :cond_0
    const-string v0, "getDurationAudio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 114
    iget-object v4, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 115
    .local v3, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/AudioPlayer;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 116
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/AudioPlayer;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/AudioPlayer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 119
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->destroy()V

    goto :goto_0

    .line 121
    .end local v0    # "audio":Lcom/phonegap/AudioPlayer;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/AudioPlayer;>;"
    :cond_0
    iget-object v4, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 122
    return-void
.end method

.method public pausePlayingAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 208
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->pausePlaying()V

    .line 211
    :cond_0
    return-void
.end method

.method public seekToAudio(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "milliseconds"    # I

    .prologue
    .line 195
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 196
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p2}, Lcom/phonegap/AudioPlayer;->seekToPlaying(I)V

    .line 199
    :cond_0
    return-void
.end method

.method public setAudioOutputDevice(I)V
    .locals 7
    .param p1, "output"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 270
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->ctx:Lcom/phonegap/api/PhonegapActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 271
    .local v0, "audiMgr":Landroid/media/AudioManager;
    if-ne p1, v6, :cond_0

    .line 272
    invoke-virtual {v0, v4, v6, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    if-ne p1, v5, :cond_1

    .line 275
    invoke-virtual {v0, v4, v5, v3}, Landroid/media/AudioManager;->setRouting(III)V

    goto :goto_0

    .line 278
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AudioHandler.setAudioOutputDevice() Error: Unknown output device."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 180
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/phonegap/AudioPlayer;

    .end local v0    # "audio":Lcom/phonegap/AudioPlayer;
    invoke-direct {v0, p0, p1}, Lcom/phonegap/AudioPlayer;-><init>(Lcom/phonegap/AudioHandler;Ljava/lang/String;)V

    .line 182
    .restart local v0    # "audio":Lcom/phonegap/AudioPlayer;
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    invoke-virtual {v0, p2}, Lcom/phonegap/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/phonegap/AudioPlayer;

    invoke-direct {v0, p0, p1}, Lcom/phonegap/AudioPlayer;-><init>(Lcom/phonegap/AudioHandler;Ljava/lang/String;)V

    .line 155
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v0, p2}, Lcom/phonegap/AudioPlayer;->startRecording(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopPlayingAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 220
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->stopPlaying()V

    .line 225
    :cond_0
    return-void
.end method

.method public stopRecordingAudio(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 166
    .local v0, "audio":Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->stopRecording()V

    .line 168
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    return-void
.end method
