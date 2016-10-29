.class public Lcom/phonegap/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static MEDIA_DURATION:I

.field private static MEDIA_ERROR:I

.field private static MEDIA_ERROR_ALREADY_RECORDING:I

.field private static MEDIA_ERROR_PAUSE_STATE:I

.field private static MEDIA_ERROR_PLAY_MODE_SET:I

.field private static MEDIA_ERROR_RECORD_MODE_SET:I

.field private static MEDIA_ERROR_RESUME_STATE:I

.field private static MEDIA_ERROR_STARTING_PLAYBACK:I

.field private static MEDIA_ERROR_STARTING_RECORDING:I

.field private static MEDIA_ERROR_STOP_STATE:I

.field private static MEDIA_NONE:I

.field private static MEDIA_PAUSED:I

.field private static MEDIA_RUNNING:I

.field private static MEDIA_STARTING:I

.field private static MEDIA_STATE:I

.field private static MEDIA_STOPPED:I


# instance fields
.field private audioFile:Ljava/lang/String;

.field private duration:F

.field private handler:Lcom/phonegap/AudioHandler;

.field private id:Ljava/lang/String;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private prepareOnly:Z

.field private recorder:Landroid/media/MediaRecorder;

.field private state:I

.field private tempFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_NONE:I

    .line 33
    sput v1, Lcom/phonegap/AudioPlayer;->MEDIA_STARTING:I

    .line 34
    sput v2, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    .line 35
    sput v3, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    .line 36
    sput v4, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    .line 39
    sput v1, Lcom/phonegap/AudioPlayer;->MEDIA_STATE:I

    .line 40
    sput v2, Lcom/phonegap/AudioPlayer;->MEDIA_DURATION:I

    .line 41
    const/16 v0, 0x9

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    .line 44
    sput v1, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_PLAY_MODE_SET:I

    .line 45
    sput v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_ALREADY_RECORDING:I

    .line 46
    sput v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STARTING_RECORDING:I

    .line 47
    sput v4, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_RECORD_MODE_SET:I

    .line 48
    const/4 v0, 0x5

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STARTING_PLAYBACK:I

    .line 49
    const/4 v0, 0x6

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_RESUME_STATE:I

    .line 50
    const/4 v0, 0x7

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_PAUSE_STATE:I

    .line 51
    const/16 v0, 0x8

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STOP_STATE:I

    return-void
.end method

.method public constructor <init>(Lcom/phonegap/AudioHandler;Ljava/lang/String;)V
    .locals 2
    .param p1, "handler"    # Lcom/phonegap/AudioHandler;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_NONE:I

    iput v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    .line 56
    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/phonegap/AudioPlayer;->duration:F

    .line 59
    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 60
    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->tempFile:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/AudioPlayer;->prepareOnly:Z

    .line 72
    iput-object p1, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    .line 73
    iput-object p2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmprecording.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/AudioPlayer;->tempFile:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private getDurationInSeconds()F
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 406
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    if-eq v0, p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 410
    :cond_0
    iput p1, p0, Lcom/phonegap/AudioPlayer;->state:I

    .line 411
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/phonegap/AudioPlayer;->stopPlaying()V

    .line 85
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 86
    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/phonegap/AudioPlayer;->stopRecording()V

    .line 90
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 91
    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 93
    :cond_1
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v0, v1, :cond_1

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 292
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getDuration(Ljava/lang/String;)F
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 324
    const/high16 v0, -0x40000000    # -2.0f

    .line 339
    :goto_0
    return v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 329
    iget v0, p0, Lcom/phonegap/AudioPlayer;->duration:F

    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/AudioPlayer;->prepareOnly:Z

    .line 335
    invoke-virtual {p0, p1}, Lcom/phonegap/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 339
    iget v0, p0, Lcom/phonegap/AudioPlayer;->duration:F

    goto :goto_0
.end method

.method public isStreaming(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 304
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 142
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 279
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 280
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 389
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer.onError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 393
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 396
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 353
    iget-boolean v0, p0, Lcom/phonegap/AudioPlayer;->prepareOnly:Z

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 359
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/phonegap/AudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lcom/phonegap/AudioPlayer;->duration:F

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/AudioPlayer;->prepareOnly:Z

    .line 367
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_DURATION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phonegap/AudioPlayer;->duration:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public pausePlaying()V
    .locals 3

    .prologue
    .line 249
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 251
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 257
    :goto_0
    return-void

    .line 254
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: pausePlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phonegap/AudioPlayer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_PAUSE_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekToPlaying(I)V
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 241
    :cond_0
    return-void
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AudioPlayer Error: Can\'t play in record mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_RECORD_MODE_SET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    if-ne v0, v1, :cond_5

    .line 177
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 184
    :goto_1
    iput-object p1, p0, Lcom/phonegap/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 187
    invoke-virtual {p0, p1}, Lcom/phonegap/AudioPlayer;->isStreaming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 190
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_STARTING:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 191
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 192
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 214
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STARTING_PLAYBACK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    .line 197
    :cond_3
    const-string v0, "/android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, "f":Ljava/lang/String;
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    iget-object v0, v0, Lcom/phonegap/AudioHandler;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v0}, Lcom/phonegap/api/PhonegapActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 200
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 205
    .end local v7    # "f":Ljava/lang/String;
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_2
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_STARTING:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 206
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 207
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 210
    invoke-direct {p0}, Lcom/phonegap/AudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lcom/phonegap/AudioPlayer;->duration:F

    goto/16 :goto_0

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 223
    :cond_5
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_STARTING:I

    if-ne v0, v1, :cond_7

    .line 224
    :cond_6
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 225
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    goto/16 :goto_0

    .line 228
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: startPlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phonegap/AudioPlayer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_RESUME_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AudioPlayer Error: Can\'t record in play mode."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_PLAY_MODE_SET:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    .line 108
    iput-object p1, p0, Lcom/phonegap/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 109
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 110
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 111
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 112
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 113
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 116
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 117
    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v1}, Lcom/phonegap/AudioPlayer;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 124
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STARTING_RECORDING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 122
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AudioPlayer Error: Already recording."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_ALREADY_RECORDING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopPlaying()V
    .locals 3

    .prologue
    .line 263
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v0, v1, :cond_1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 265
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: stopPlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phonegap/AudioPlayer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STOP_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 150
    :try_start_0
    iget v1, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v1, v2, :cond_0

    .line 151
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 152
    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v1}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->audioFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/phonegap/AudioPlayer;->moveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
