.class public Lcom/phonegap/Notification;
.super Lcom/phonegap/api/Plugin;
.source "Notification.java"


# instance fields
.field public confirmResult:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field public spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/phonegap/Notification;->confirmResult:I

    .line 30
    iput-object v1, p0, Lcom/phonegap/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 31
    iput-object v1, p0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized activityStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phonegap/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/phonegap/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phonegap/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 275
    :cond_0
    move-object v2, p0

    .line 276
    .local v2, "notification":Lcom/phonegap/Notification;
    iget-object v3, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    .line 277
    .local v3, "ctx":Lcom/phonegap/api/PhonegapActivity;
    new-instance v0, Lcom/phonegap/Notification$3;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/phonegap/Notification$3;-><init>(Lcom/phonegap/Notification;Lcom/phonegap/Notification;Lcom/phonegap/api/PhonegapActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1, v0}, Lcom/phonegap/api/PhonegapActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 271
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "notification":Lcom/phonegap/Notification;
    .end local v3    # "ctx":Lcom/phonegap/api/PhonegapActivity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized activityStop()V
    .locals 1

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/phonegap/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/phonegap/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/Notification;->spinnerDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabel"    # Ljava/lang/String;
    .param p4, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    .line 177
    .local v2, "ctx":Lcom/phonegap/api/PhonegapActivity;
    move-object v6, p0

    .line 179
    .local v6, "notification":Lcom/phonegap/Notification;
    new-instance v0, Lcom/phonegap/Notification$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/phonegap/Notification$1;-><init>(Lcom/phonegap/Notification;Lcom/phonegap/api/PhonegapActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phonegap/Notification;Ljava/lang/String;)V

    .line 197
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1, v0}, Lcom/phonegap/api/PhonegapActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 176
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "ctx":Lcom/phonegap/api/PhonegapActivity;
    .end local v6    # "notification":Lcom/phonegap/Notification;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public beep(J)V
    .locals 10
    .param p1, "count"    # J

    .prologue
    const-wide/16 v8, 0x64

    .line 134
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 135
    .local v3, "ringtone":Landroid/net/Uri;
    iget-object v6, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-static {v6, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 138
    .local v2, "notification":Landroid/media/Ringtone;
    if-eqz v2, :cond_1

    .line 139
    const-wide/16 v0, 0x0

    .local v0, "i":J
    :goto_0
    cmp-long v6, v0, p1

    if-gez v6, :cond_1

    .line 140
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 141
    const-wide/16 v4, 0x1388

    .line 142
    .local v4, "timeout":J
    :goto_1
    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 143
    sub-long/2addr v4, v8

    .line 145
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v6

    goto :goto_1

    .line 139
    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_0

    .line 151
    .end local v0    # "i":J
    .end local v4    # "timeout":J
    :cond_1
    return-void
.end method

.method public declared-synchronized confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # Ljava/lang/String;
    .param p4, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    .line 213
    .local v2, "ctx":Lcom/phonegap/api/PhonegapActivity;
    move-object v6, p0

    .line 214
    .local v6, "notification":Lcom/phonegap/Notification;
    const-string v1, ","

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "fButtons":[Ljava/lang/String;
    new-instance v0, Lcom/phonegap/Notification$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/phonegap/Notification$2;-><init>(Lcom/phonegap/Notification;Lcom/phonegap/api/PhonegapActivity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/phonegap/Notification;Ljava/lang/String;)V

    .line 261
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1, v0}, Lcom/phonegap/api/PhonegapActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 212
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "ctx":Lcom/phonegap/api/PhonegapActivity;
    .end local v5    # "fButtons":[Ljava/lang/String;
    .end local v6    # "notification":Lcom/phonegap/Notification;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 49
    .local v3, "status":Lcom/phonegap/api/PluginResult$Status;
    const-string v2, ""

    .line 52
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string v4, "beep"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/phonegap/Notification;->beep(J)V

    .line 85
    :cond_0
    :goto_0
    new-instance v4, Lcom/phonegap/api/PluginResult;

    invoke-direct {v4, v3, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 87
    :goto_1
    return-object v4

    .line 55
    :cond_1
    const-string v4, "vibrate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/phonegap/Notification;->vibrate(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/phonegap/api/PluginResult;

    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v4, v5}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_1

    .line 58
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v4, "alert"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 59
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6, p3}, Lcom/phonegap/Notification;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->NO_RESULT:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v1, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 61
    .local v1, "r":Lcom/phonegap/api/PluginResult;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    move-object v4, v1

    .line 62
    goto :goto_1

    .line 64
    .end local v1    # "r":Lcom/phonegap/api/PluginResult;
    :cond_3
    const-string v4, "confirm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 65
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6, p3}, Lcom/phonegap/Notification;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->NO_RESULT:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v1, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 67
    .restart local v1    # "r":Lcom/phonegap/api/PluginResult;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    move-object v4, v1

    .line 68
    goto :goto_1

    .line 70
    .end local v1    # "r":Lcom/phonegap/api/PluginResult;
    :cond_4
    const-string v4, "activityStart"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 71
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/phonegap/Notification;->activityStart(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    :cond_5
    const-string v4, "activityStop"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 74
    invoke-virtual {p0}, Lcom/phonegap/Notification;->activityStop()V

    goto/16 :goto_0

    .line 76
    :cond_6
    const-string v4, "progressStart"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 77
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/phonegap/Notification;->progressStart(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_7
    const-string v4, "progressValue"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 80
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/phonegap/Notification;->progressValue(I)V

    goto/16 :goto_0

    .line 82
    :cond_8
    const-string v4, "progressStop"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/phonegap/Notification;->progressStop()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 98
    const-string v0, "alert"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 120
    :goto_0
    return v0

    .line 101
    :cond_0
    const-string v0, "confirm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "activityStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "activityStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_3
    const-string v0, "progressStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_4
    const-string v0, "progressValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_5
    const-string v0, "progressStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 117
    goto :goto_0

    .line 120
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized progressStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 309
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 311
    :cond_0
    move-object v2, p0

    .line 312
    .local v2, "notification":Lcom/phonegap/Notification;
    iget-object v3, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    .line 313
    .local v3, "ctx":Lcom/phonegap/api/PhonegapActivity;
    new-instance v0, Lcom/phonegap/Notification$4;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/phonegap/Notification$4;-><init>(Lcom/phonegap/Notification;Lcom/phonegap/Notification;Lcom/phonegap/api/PhonegapActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1, v0}, Lcom/phonegap/api/PhonegapActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 307
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "notification":Lcom/phonegap/Notification;
    .end local v3    # "ctx":Lcom/phonegap/api/PhonegapActivity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized progressStop()V
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_0
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized progressValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :cond_0
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public vibrate(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 160
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 161
    const-wide/16 p1, 0x1f4

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/phonegap/Notification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 164
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 165
    return-void
.end method
