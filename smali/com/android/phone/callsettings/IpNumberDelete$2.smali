.class Lcom/android/phone/callsettings/IpNumberDelete$2;
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
    .line 248
    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$2;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$2;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpNumberDelete;->finish()V

    .line 251
    return-void
.end method
