.class Lcom/phonegap/DroidGap$3;
.super Ljava/lang/Object;
.source "DroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/DroidGap;

.field final synthetic val$me:Lcom/phonegap/DroidGap;

.field final synthetic val$time:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phonegap/DroidGap;ILcom/phonegap/DroidGap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/phonegap/DroidGap$3;->this$0:Lcom/phonegap/DroidGap;

    iput p2, p0, Lcom/phonegap/DroidGap$3;->val$time:I

    iput-object p3, p0, Lcom/phonegap/DroidGap$3;->val$me:Lcom/phonegap/DroidGap;

    iput-object p4, p0, Lcom/phonegap/DroidGap$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 444
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :try_start_1
    iget v1, p0, Lcom/phonegap/DroidGap$3;->val$time:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 446
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :goto_0
    iget-object v1, p0, Lcom/phonegap/DroidGap$3;->val$me:Lcom/phonegap/DroidGap;

    iget-boolean v1, v1, Lcom/phonegap/DroidGap;->cancelLoadUrl:Z

    if-nez v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/phonegap/DroidGap$3;->val$me:Lcom/phonegap/DroidGap;

    iget-object v2, p0, Lcom/phonegap/DroidGap$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 457
    :goto_1
    return-void

    .line 446
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 447
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 448
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 454
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/phonegap/DroidGap$3;->val$me:Lcom/phonegap/DroidGap;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/phonegap/DroidGap;->cancelLoadUrl:Z

    .line 455
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aborting loadUrl("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phonegap/DroidGap$3;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): Another URL was loaded before timer expired."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
