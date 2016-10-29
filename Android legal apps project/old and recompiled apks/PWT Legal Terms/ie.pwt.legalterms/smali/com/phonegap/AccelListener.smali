.class public Lcom/phonegap/AccelListener;
.super Lcom/phonegap/api/Plugin;
.source "AccelListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static ERROR_FAILED_TO_START:I

.field public static RUNNING:I

.field public static STARTING:I

.field public static STOPPED:I


# instance fields
.field public TIMEOUT:F

.field lastAccessTime:J

.field mSensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field status:I

.field timestamp:J

.field x:F

.field y:F

.field z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/phonegap/AccelListener;->STOPPED:I

    .line 33
    const/4 v0, 0x1

    sput v0, Lcom/phonegap/AccelListener;->STARTING:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/phonegap/AccelListener;->RUNNING:I

    .line 35
    const/4 v0, 0x3

    sput v0, Lcom/phonegap/AccelListener;->ERROR_FAILED_TO_START:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 37
    const v0, 0x46ea6000    # 30000.0f

    iput v0, p0, Lcom/phonegap/AccelListener;->TIMEOUT:F

    .line 51
    iput v1, p0, Lcom/phonegap/AccelListener;->x:F

    .line 52
    iput v1, p0, Lcom/phonegap/AccelListener;->y:F

    .line 53
    iput v1, p0, Lcom/phonegap/AccelListener;->z:F

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phonegap/AccelListener;->timestamp:J

    .line 55
    sget v0, Lcom/phonegap/AccelListener;->STOPPED:I

    invoke-direct {p0, v0}, Lcom/phonegap/AccelListener;->setStatus(I)V

    .line 56
    return-void
.end method

.method private setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 294
    iput p1, p0, Lcom/phonegap/AccelListener;->status:I

    .line 295
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 79
    .local v5, "status":Lcom/phonegap/api/PluginResult$Status;
    const-string v4, ""

    .line 82
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    const-string v8, "getStatus"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/phonegap/AccelListener;->getStatus()I

    move-result v2

    .line 84
    .local v2, "i":I
    new-instance v8, Lcom/phonegap/api/PluginResult;

    invoke-direct {v8, v5, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    .line 143
    .end local v2    # "i":I
    :goto_0
    return-object v8

    .line 86
    :cond_0
    const-string v8, "start"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/phonegap/AccelListener;->start()I

    move-result v2

    .line 88
    .restart local v2    # "i":I
    new-instance v8, Lcom/phonegap/api/PluginResult;

    invoke-direct {v8, v5, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v2    # "i":I
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 143
    .local v0, "e":Lorg/json/JSONException;
    new-instance v8, Lcom/phonegap/api/PluginResult;

    sget-object v9, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v8, v9}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0

    .line 90
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string v8, "stop"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/phonegap/AccelListener;->stop()V

    .line 92
    new-instance v8, Lcom/phonegap/api/PluginResult;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v8, "getAcceleration"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 96
    iget v8, p0, Lcom/phonegap/AccelListener;->status:I

    sget v9, Lcom/phonegap/AccelListener;->RUNNING:I

    if-eq v8, v9, :cond_5

    .line 97
    invoke-virtual {p0}, Lcom/phonegap/AccelListener;->start()I

    move-result v3

    .line 98
    .local v3, "r":I
    sget v8, Lcom/phonegap/AccelListener;->ERROR_FAILED_TO_START:I

    if-ne v3, v8, :cond_3

    .line 99
    new-instance v8, Lcom/phonegap/api/PluginResult;

    sget-object v9, Lcom/phonegap/api/PluginResult$Status;->IO_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    sget v10, Lcom/phonegap/AccelListener;->ERROR_FAILED_TO_START:I

    invoke-direct {v8, v9, v10}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto :goto_0

    .line 102
    :cond_3
    const-wide/16 v6, 0x7d0

    .line 103
    .local v6, "timeout":J
    :goto_1
    iget v8, p0, Lcom/phonegap/AccelListener;->status:I

    sget v9, Lcom/phonegap/AccelListener;->STARTING:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v8, v9, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    .line 104
    const-wide/16 v8, 0x64

    sub-long/2addr v6, v8

    .line 106
    const-wide/16 v8, 0x64

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_5

    .line 112
    new-instance v8, Lcom/phonegap/api/PluginResult;

    sget-object v9, Lcom/phonegap/api/PluginResult$Status;->IO_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    sget v10, Lcom/phonegap/AccelListener;->ERROR_FAILED_TO_START:I

    invoke-direct {v8, v9, v10}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto :goto_0

    .line 115
    .end local v3    # "r":I
    .end local v6    # "timeout":J
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/phonegap/AccelListener;->lastAccessTime:J

    .line 116
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .local v3, "r":Lorg/json/JSONObject;
    const-string v8, "x"

    iget v9, p0, Lcom/phonegap/AccelListener;->x:F

    float-to-double v9, v9

    invoke-virtual {v3, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 118
    const-string v8, "y"

    iget v9, p0, Lcom/phonegap/AccelListener;->y:F

    float-to-double v9, v9

    invoke-virtual {v3, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 119
    const-string v8, "z"

    iget v9, p0, Lcom/phonegap/AccelListener;->z:F

    float-to-double v9, v9

    invoke-virtual {v3, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 121
    const-string v8, "timestamp"

    iget-wide v9, p0, Lcom/phonegap/AccelListener;->timestamp:J

    invoke-virtual {v3, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 122
    new-instance v8, Lcom/phonegap/api/PluginResult;

    invoke-direct {v8, v5, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 124
    .end local v3    # "r":Lorg/json/JSONObject;
    :cond_6
    const-string v8, "setTimeout"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v8

    if-eqz v8, :cond_8

    .line 126
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 127
    .local v6, "timeout":F
    invoke-virtual {p0, v6}, Lcom/phonegap/AccelListener;->setTimeout(F)V

    .line 128
    new-instance v8, Lcom/phonegap/api/PluginResult;

    const/4 v9, 0x0

    invoke-direct {v8, v5, v9}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 129
    .end local v6    # "timeout":F
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 130
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->INVALID_ACTION:Lcom/phonegap/api/PluginResult$Status;

    .line 131
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_2
    new-instance v8, Lcom/phonegap/api/PluginResult;

    invoke-direct {v8, v5, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :catch_3
    move-exception v8

    move-object v0, v8

    .line 133
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    .line 134
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 137
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_8
    const-string v8, "getTimeout"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 138
    invoke-virtual {p0}, Lcom/phonegap/AccelListener;->getTimeout()F

    move-result v1

    .line 139
    .local v1, "f":F
    new-instance v8, Lcom/phonegap/api/PluginResult;

    invoke-direct {v8, v5, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/phonegap/AccelListener;->status:I

    return v0
.end method

.method public getTimeout()F
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/phonegap/AccelListener;->TIMEOUT:F

    return v0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 154
    const-string v0, "getStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 166
    :goto_0
    return v0

    .line 157
    :cond_0
    const-string v0, "getAcceleration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget v0, p0, Lcom/phonegap/AccelListener;->status:I

    sget v1, Lcom/phonegap/AccelListener;->RUNNING:I

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 160
    goto :goto_0

    .line 163
    :cond_1
    const-string v0, "getTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 164
    goto :goto_0

    .line 166
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 229
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/phonegap/AccelListener;->stop()V

    .line 175
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x1

    .line 239
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget v0, p0, Lcom/phonegap/AccelListener;->status:I

    sget v1, Lcom/phonegap/AccelListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phonegap/AccelListener;->timestamp:J

    .line 250
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/phonegap/AccelListener;->x:F

    .line 251
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iput v0, p0, Lcom/phonegap/AccelListener;->y:F

    .line 252
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/phonegap/AccelListener;->z:F

    .line 254
    sget v0, Lcom/phonegap/AccelListener;->RUNNING:I

    invoke-direct {p0, v0}, Lcom/phonegap/AccelListener;->setStatus(I)V

    .line 257
    iget-wide v0, p0, Lcom/phonegap/AccelListener;->timestamp:J

    iget-wide v2, p0, Lcom/phonegap/AccelListener;->lastAccessTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/phonegap/AccelListener;->TIMEOUT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/phonegap/AccelListener;->stop()V

    goto :goto_0
.end method

.method public setContext(Lcom/phonegap/api/PhonegapActivity;)V
    .locals 1
    .param p1, "ctx"    # Lcom/phonegap/api/PhonegapActivity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/phonegap/api/Plugin;->setContext(Lcom/phonegap/api/PhonegapActivity;)V

    .line 66
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/phonegap/AccelListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 67
    return-void
.end method

.method public setTimeout(F)V
    .locals 0
    .param p1, "timeout"    # F

    .prologue
    .line 277
    iput p1, p0, Lcom/phonegap/AccelListener;->TIMEOUT:F

    .line 278
    return-void
.end method

.method public start()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    iget v1, p0, Lcom/phonegap/AccelListener;->status:I

    sget v2, Lcom/phonegap/AccelListener;->RUNNING:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/phonegap/AccelListener;->status:I

    sget v2, Lcom/phonegap/AccelListener;->STARTING:I

    if-ne v1, v2, :cond_1

    .line 190
    :cond_0
    iget v1, p0, Lcom/phonegap/AccelListener;->status:I

    .line 209
    :goto_0
    return v1

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/phonegap/AccelListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 198
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iput-object v1, p0, Lcom/phonegap/AccelListener;->mSensor:Landroid/hardware/Sensor;

    .line 199
    iget-object v1, p0, Lcom/phonegap/AccelListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/phonegap/AccelListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 200
    sget v1, Lcom/phonegap/AccelListener;->STARTING:I

    invoke-direct {p0, v1}, Lcom/phonegap/AccelListener;->setStatus(I)V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/phonegap/AccelListener;->lastAccessTime:J

    .line 209
    :goto_1
    iget v1, p0, Lcom/phonegap/AccelListener;->status:I

    goto :goto_0

    .line 206
    :cond_2
    sget v1, Lcom/phonegap/AccelListener;->ERROR_FAILED_TO_START:I

    invoke-direct {p0, v1}, Lcom/phonegap/AccelListener;->setStatus(I)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/phonegap/AccelListener;->status:I

    sget v1, Lcom/phonegap/AccelListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/phonegap/AccelListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 219
    :cond_0
    sget v0, Lcom/phonegap/AccelListener;->STOPPED:I

    invoke-direct {p0, v0}, Lcom/phonegap/AccelListener;->setStatus(I)V

    .line 220
    return-void
.end method
