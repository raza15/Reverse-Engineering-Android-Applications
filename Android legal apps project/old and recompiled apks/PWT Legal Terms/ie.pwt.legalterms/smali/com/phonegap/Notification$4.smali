.class Lcom/phonegap/Notification$4;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/Notification;->progressStart(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/Notification;

.field final synthetic val$ctx:Lcom/phonegap/api/PhonegapActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$notification:Lcom/phonegap/Notification;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phonegap/Notification;Lcom/phonegap/Notification;Lcom/phonegap/api/PhonegapActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/phonegap/Notification$4;->this$0:Lcom/phonegap/Notification;

    iput-object p2, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    iput-object p3, p0, Lcom/phonegap/Notification$4;->val$ctx:Lcom/phonegap/api/PhonegapActivity;

    iput-object p4, p0, Lcom/phonegap/Notification$4;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/phonegap/Notification$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 315
    iget-object v0, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/phonegap/Notification$4;->val$ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 316
    iget-object v0, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    iget-object v0, v0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 317
    iget-object v0, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    iget-object v0, v0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/phonegap/Notification$4;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    iget-object v0, v0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/phonegap/Notification$4;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    iget-object v0, v0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 320
    iget-object v0, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    iget-object v0, v0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 321
    iget-object v0, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    iget-object v0, v0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 322
    iget-object v0, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    iget-object v0, v0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/phonegap/Notification$4$1;

    invoke-direct {v1, p0}, Lcom/phonegap/Notification$4$1;-><init>(Lcom/phonegap/Notification$4;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 328
    iget-object v0, p0, Lcom/phonegap/Notification$4;->val$notification:Lcom/phonegap/Notification;

    iget-object v0, v0, Lcom/phonegap/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 329
    return-void
.end method
