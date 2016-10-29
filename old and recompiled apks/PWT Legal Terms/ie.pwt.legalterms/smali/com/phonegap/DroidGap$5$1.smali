.class Lcom/phonegap/DroidGap$5$1;
.super Ljava/lang/Object;
.source "DroidGap.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/DroidGap$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phonegap/DroidGap$5;


# direct methods
.method constructor <init>(Lcom/phonegap/DroidGap$5;)V
    .locals 0

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/phonegap/DroidGap$5$1;->this$1:Lcom/phonegap/DroidGap$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1349
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1350
    iget-object v0, p0, Lcom/phonegap/DroidGap$5$1;->this$1:Lcom/phonegap/DroidGap$5;

    iget-boolean v0, v0, Lcom/phonegap/DroidGap$5;->val$exit:Z

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/phonegap/DroidGap$5$1;->this$1:Lcom/phonegap/DroidGap$5;

    iget-object v0, v0, Lcom/phonegap/DroidGap$5;->val$me:Lcom/phonegap/DroidGap;

    invoke-virtual {v0}, Lcom/phonegap/DroidGap;->finish()V

    .line 1353
    :cond_0
    return-void
.end method
