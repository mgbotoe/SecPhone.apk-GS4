.class Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;
.super Ljava/lang/Object;
.source "GlobalDataRoamingAccess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iput p2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 220
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    iget v5, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->val$position:I

    #calls: Lcom/android/phone/GlobalDataRoamingAccess;->checkSecureSetting(I)Z
    invoke-static {v2, v5}, Lcom/android/phone/GlobalDataRoamingAccess;->access$400(Lcom/android/phone/GlobalDataRoamingAccess;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$500(Lcom/android/phone/GlobalDataRoamingAccess;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 223
    .local v1, mRB:Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    iget v5, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->val$position:I

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    .line 225
    .end local v1           #mRB:Landroid/widget/RadioButton;
    :cond_1
    iget v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->val$position:I

    packed-switch v2, :pswitch_data_0

    .line 235
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming_onetime"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-virtual {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 241
    :cond_3
    return-void

    .line 227
    .restart local v0       #i$:Ljava/util/Iterator;
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "data_roaming"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "data_roaming_onetime"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 231
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "data_roaming"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    iget-object v2, v2, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    #getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$600(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roaming_onetime"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
