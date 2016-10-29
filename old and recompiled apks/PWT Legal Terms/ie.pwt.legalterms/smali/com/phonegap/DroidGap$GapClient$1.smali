.class Lcom/phonegap/DroidGap$GapClient$1;
.super Ljava/lang/Object;
.source "DroidGap.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/DroidGap$GapClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phonegap/DroidGap$GapClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/phonegap/DroidGap$GapClient;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/phonegap/DroidGap$GapClient$1;->this$1:Lcom/phonegap/DroidGap$GapClient;

    iput-object p2, p0, Lcom/phonegap/DroidGap$GapClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 776
    iget-object v0, p0, Lcom/phonegap/DroidGap$GapClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 777
    return-void
.end method
