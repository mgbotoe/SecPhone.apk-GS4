.class Lcom/android/phone/OutgoingCallBroadcaster$6;
.super Ljava/lang/Object;
.source "OutgoingCallBroadcaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/OutgoingCallBroadcaster;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 2604
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->removeDialog(I)V

    .line 2607
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$6;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 2608
    return-void
.end method
