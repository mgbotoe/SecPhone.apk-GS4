.class Lcom/android/phone/callsettings/IntCallServicePreference$1;
.super Ljava/lang/Object;
.source "IntCallServicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IntCallServicePreference;->setInitValueAndLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IntCallServicePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IntCallServicePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$1;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    #calls: Lcom/android/phone/callsettings/IntCallServicePreference;->autoClicked()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->access$000(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    .line 134
    return-void
.end method
