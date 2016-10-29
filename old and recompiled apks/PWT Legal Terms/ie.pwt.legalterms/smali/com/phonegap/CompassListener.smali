.class public Lcom/phonegap/CompassListener;
.super Lcom/phonegap/api/Plugin;
.source "CompassListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static ERROR_FAILED_TO_START:I

.field public static RUNNING:I

.field public static STARTING:I

.field public static STOPPED:I


# instance fields
.field public TIMEOUT:J

.field heading:F

.field lastAccessTime:J

.field mSensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field status:I

.field timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/phonegap/CompassListener;->STOPPED:I

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/phonegap/CompassListener;->STARTING:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lcom/phonegap/CompassListener;->RUNNING:I

    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/phonegap/CompassListener;->ERROR_FAILED_TO_START:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 35
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/phonegap/CompassListener;->TIMEOUT:J

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phonegap/CompassListener;->timeStamp:J

    .line 50
    sget v0, Lcom/phonegap/CompassListener;->STOPPED:I

    invoke-direct {p0, v0}, Lcom/phonegap/CompassListener;->setStatus(I)V

    .line 51
    return-void
.end method

.method private setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/phonegap/CompassListener;->status:I

    .line 268
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v7, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 74
    .local v7, "status":Lcom/phonegap/api/PluginResult$Status;
    const-string v6, ""

    .line 77
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    const-string v10, "start"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/phonegap/CompassListener;->start()I

    .line 118
    :cond_0
    :goto_0
    new-instance v10, Lcom/phonegap/api/PluginResult;

    invoke-direct {v10, v7, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 121
    :goto_1
    return-object v10

    .line 80
    :cond_1
    const-string v10, "stop"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/phonegap/CompassListener;->stop()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 121
    new-instance v10, Lcom/phonegap/api/PluginResult;

    sget-object v11, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v10, v11}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_1

    .line 83
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v10, "getStatus"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 84
    invoke-virtual {p0}, Lcom/phonegap/CompassListener;->getStatus()I

    move-result v2

    .line 85
    .local v2, "i":I
    new-instance v10, Lcom/phonegap/api/PluginResult;

    invoke-direct {v10, v7, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto :goto_1

    .line 87
    .end local v2    # "i":I
    :cond_3
    const-string v10, "getHeading"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 89
    iget v10, p0, Lcom/phonegap/CompassListener;->status:I

    sget v11, Lcom/phonegap/CompassListener;->RUNNING:I

    if-eq v10, v11, :cond_6

    .line 90
    invoke-virtual {p0}, Lcom/phonegap/CompassListener;->start()I

    move-result v5

    .line 91
    .local v5, "r":I
    sget v10, Lcom/phonegap/CompassListener;->ERROR_FAILED_TO_START:I

    if-ne v5, v10, :cond_4

    .line 92
    new-instance v10, Lcom/phonegap/api/PluginResult;

    sget-object v11, Lcom/phonegap/api/PluginResult$Status;->IO_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    sget v12, Lcom/phonegap/CompassListener;->ERROR_FAILED_TO_START:I

    invoke-direct {v10, v11, v12}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto :goto_1

    .line 95
    :cond_4
    const-wide/16 v8, 0x7d0

    .line 96
    .local v8, "timeout":J
    :goto_2
    iget v10, p0, Lcom/phonegap/CompassListener;->status:I

    sget v11, Lcom/phonegap/CompassListener;->STARTING:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v10, v11, :cond_5

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_5

    .line 97
    const-wide/16 v10, 0x64

    sub-long/2addr v8, v10

    .line 99
    const-wide/16 v10, 0x64

    :try_start_2
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 104
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_5
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_6

    .line 105
    new-instance v10, Lcom/phonegap/api/PluginResult;

    sget-object v11, Lcom/phonegap/api/PluginResult$Status;->IO_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    sget v12, Lcom/phonegap/AccelListener;->ERROR_FAILED_TO_START:I

    invoke-direct {v10, v11, v12}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto :goto_1

    .line 108
    .end local v5    # "r":I
    .end local v8    # "timeout":J
    :cond_6
    invoke-virtual {p0}, Lcom/phonegap/CompassListener;->getHeading()F

    move-result v1

    .line 109
    .local v1, "f":F
    new-instance v10, Lcom/phonegap/api/PluginResult;

    invoke-direct {v10, v7, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 111
    .end local v1    # "f":F
    :cond_7
    const-string v10, "setTimeout"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 112
    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/phonegap/CompassListener;->setTimeout(J)V

    goto/16 :goto_0

    .line 114
    :cond_8
    const-string v10, "getTimeout"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/phonegap/CompassListener;->getTimeout()J

    move-result-wide v3

    .line 116
    .local v3, "l":J
    new-instance v10, Lcom/phonegap/api/PluginResult;

    long-to-float v11, v3

    invoke-direct {v10, v7, v11}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method public getHeading()F
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phonegap/CompassListener;->lastAccessTime:J

    .line 241
    iget v0, p0, Lcom/phonegap/CompassListener;->heading:F

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/phonegap/CompassListener;->status:I

    return v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/phonegap/CompassListener;->TIMEOUT:J

    return-wide v0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 132
    const-string v0, "getStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 144
    :goto_0
    return v0

    .line 135
    :cond_0
    const-string v0, "getHeading"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget v0, p0, Lcom/phonegap/CompassListener;->status:I

    sget v1, Lcom/phonegap/CompassListener;->RUNNING:I

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 138
    goto :goto_0

    .line 141
    :cond_1
    const-string v0, "getTimeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 202
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/phonegap/CompassListener;->stop()V

    .line 152
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 212
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 215
    .local v0, "heading":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/phonegap/CompassListener;->timeStamp:J

    .line 216
    iput v0, p0, Lcom/phonegap/CompassListener;->heading:F

    .line 217
    sget v1, Lcom/phonegap/CompassListener;->RUNNING:I

    invoke-direct {p0, v1}, Lcom/phonegap/CompassListener;->setStatus(I)V

    .line 220
    iget-wide v1, p0, Lcom/phonegap/CompassListener;->timeStamp:J

    iget-wide v3, p0, Lcom/phonegap/CompassListener;->lastAccessTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/phonegap/CompassListener;->TIMEOUT:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/phonegap/CompassListener;->stop()V

    .line 223
    :cond_0
    return-void
.end method

.method public setContext(Lcom/phonegap/api/PhonegapActivity;)V
    .locals 1
    .param p1, "ctx"    # Lcom/phonegap/api/PhonegapActivity;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/phonegap/api/Plugin;->setContext(Lcom/phonegap/api/PhonegapActivity;)V

    .line 61
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/phonegap/CompassListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 62
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .prologue
    .line 250
    iput-wide p1, p0, Lcom/phonegap/CompassListener;->TIMEOUT:J

    .line 251
    return-void
.end method

.method public start()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 166
    iget v1, p0, Lcom/phonegap/CompassListener;->status:I

    sget v2, Lcom/phonegap/CompassListener;->RUNNING:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/phonegap/CompassListener;->status:I

    sget v2, Lcom/phonegap/CompassListener;->STARTING:I

    if-ne v1, v2, :cond_1

    .line 167
    :cond_0
    iget v1, p0, Lcom/phonegap/CompassListener;->status:I

    .line 186
    :goto_0
    return v1

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/phonegap/CompassListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 174
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 175
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iput-object v1, p0, Lcom/phonegap/CompassListener;->mSensor:Landroid/hardware/Sensor;

    .line 176
    iget-object v1, p0, Lcom/phonegap/CompassListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/phonegap/CompassListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/phonegap/CompassListener;->lastAccessTime:J

    .line 178
    sget v1, Lcom/phonegap/CompassListener;->STARTING:I

    invoke-direct {p0, v1}, Lcom/phonegap/CompassListener;->setStatus(I)V

    .line 186
    :goto_1
    iget v1, p0, Lcom/phonegap/CompassListener;->status:I

    goto :goto_0

    .line 183
    :cond_2
    sget v1, Lcom/phonegap/CompassListener;->ERROR_FAILED_TO_START:I

    invoke-direct {p0, v1}, Lcom/phonegap/CompassListener;->setStatus(I)V

    goto :goto_1
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/phonegap/CompassListener;->status:I

    sget v1, Lcom/phonegap/CompassListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/phonegap/CompassListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 196
    :cond_0
    sget v0, Lcom/phonegap/CompassListener;->STOPPED:I

    invoke-direct {p0, v0}, Lcom/phonegap/CompassListener;->setStatus(I)V

    .line 197
    return-void
.end method
