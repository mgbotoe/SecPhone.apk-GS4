.class Lcom/android/phone/callsettings/RejectCallWithMsg$3;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$3;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/callsettings/RejectCallWithMsg;->updateItem(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;)V

    .line 389
    return-void
.end method
