.class Lcom/android/phone/callsettings/IntCallServicePreference$6;
.super Ljava/lang/Object;
.source "IntCallServicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IntCallServicePreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
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
    .line 245
    iput-object p1, p0, Lcom/android/phone/callsettings/IntCallServicePreference$6;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/phone/callsettings/IntCallServicePreference$6;->this$0:Lcom/android/phone/callsettings/IntCallServicePreference;

    #calls: Lcom/android/phone/callsettings/IntCallServicePreference;->positiveButtonClicked()V
    invoke-static {v0}, Lcom/android/phone/callsettings/IntCallServicePreference;->access$300(Lcom/android/phone/callsettings/IntCallServicePreference;)V

    .line 249
    return-void
.end method
