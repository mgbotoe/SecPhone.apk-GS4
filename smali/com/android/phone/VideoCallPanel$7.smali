.class Lcom/android/phone/VideoCallPanel$7;
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
    .line 1794
    iput-object p1, p0, Lcom/android/phone/VideoCallPanel$7;->this$0:Lcom/android/phone/VideoCallPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1796
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1797
    return-void
.end method
