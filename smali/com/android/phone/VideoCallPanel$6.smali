.class Lcom/android/phone/VideoCallPanel$6;
.super Ljava/lang/Object;
.source "VideoCallPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VideoCallPanel;->showMemoryFullDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VideoCallPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/VideoCallPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$6;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/phone/VideoCallPanel$6;->this$0:Lcom/android/phone/VideoCallPanel;

    #getter for: Lcom/android/phone/VideoCallPanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/phone/VideoCallPanel;->access$200(Lcom/android/phone/VideoCallPanel;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.myfiles.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1791
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1792
    return-void
.end method
