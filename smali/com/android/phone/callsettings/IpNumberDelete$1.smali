.class Lcom/android/phone/callsettings/IpNumberDelete$1;
.super Ljava/lang/Object;
.source "IpNumberDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpNumberDelete;->listBinding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpNumberDelete;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpNumberDelete;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpNumberDelete;->deleteIpNumber()V

    .line 242
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    #getter for: Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpNumberDelete;->access$000(Lcom/android/phone/callsettings/IpNumberDelete;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->saveIpNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpNumberDelete;->finish()V

    .line 244
    return-void
.end method
