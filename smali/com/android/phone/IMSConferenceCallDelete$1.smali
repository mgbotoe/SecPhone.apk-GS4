.class Lcom/android/phone/IMSConferenceCallDelete$1;
.super Landroid/os/Handler;
.source "IMSConferenceCallDelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallDelete;


# direct methods
.method constructor <init>(Lcom/android/phone/IMSConferenceCallDelete;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallDelete$1;->this$0:Lcom/android/phone/IMSConferenceCallDelete;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 61
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallDelete$1;->this$0:Lcom/android/phone/IMSConferenceCallDelete;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallDelete;->finish()V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
