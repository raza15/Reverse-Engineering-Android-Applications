.class Lcom/phonegap/DroidGap$5;
.super Ljava/lang/Object;
.source "DroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/DroidGap;->displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/DroidGap;

.field final synthetic val$button:Ljava/lang/String;

.field final synthetic val$exit:Z

.field final synthetic val$me:Lcom/phonegap/DroidGap;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1340
    iput-object p1, p0, Lcom/phonegap/DroidGap$5;->this$0:Lcom/phonegap/DroidGap;

    iput-object p2, p0, Lcom/phonegap/DroidGap$5;->val$me:Lcom/phonegap/DroidGap;

    iput-object p3, p0, Lcom/phonegap/DroidGap$5;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/phonegap/DroidGap$5;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/phonegap/DroidGap$5;->val$button:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/phonegap/DroidGap$5;->val$exit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1342
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/phonegap/DroidGap$5;->val$me:Lcom/phonegap/DroidGap;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1343
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/phonegap/DroidGap$5;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1344
    iget-object v1, p0, Lcom/phonegap/DroidGap$5;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1346
    iget-object v1, p0, Lcom/phonegap/DroidGap$5;->val$button:Ljava/lang/String;

    new-instance v2, Lcom/phonegap/DroidGap$5$1;

    invoke-direct {v2, p0}, Lcom/phonegap/DroidGap$5$1;-><init>(Lcom/phonegap/DroidGap$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1355
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1356
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1357
    return-void
.end method
