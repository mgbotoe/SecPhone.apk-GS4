.class public Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;
.super Landroid/widget/BaseAdapter;
.source "IMSConferenceCallMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IMSConferenceCallMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParticipantsAdapter"
.end annotation


# instance fields
.field confCM:Lcom/android/phone/IMSConferenceCallMgr;

.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallMain;


# direct methods
.method public constructor <init>(Lcom/android/phone/IMSConferenceCallMain;Lcom/android/phone/IMSConferenceCallMgr;)V
    .locals 1
    .parameter
    .parameter "ccm"

    .prologue
    .line 982
    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 983
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/phone/IMSConferenceCallMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 984
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    invoke-direct {v0}, Lcom/android/phone/IMSConferenceCallMain$HolderCtl;-><init>()V

    #setter for: Lcom/android/phone/IMSConferenceCallMain;->mHolderCtl:Lcom/android/phone/IMSConferenceCallMain$HolderCtl;
    invoke-static {p1, v0}, Lcom/android/phone/IMSConferenceCallMain;->access$1102(Lcom/android/phone/IMSConferenceCallMain;Lcom/android/phone/IMSConferenceCallMain$HolderCtl;)Lcom/android/phone/IMSConferenceCallMain$HolderCtl;

    .line 985
    iput-object p2, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    .line 986
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    .line 991
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;
    .locals 1
    .parameter "position"

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    .line 997
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 978
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->getItem(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->confCM:Lcom/android/phone/IMSConferenceCallMgr;

    if-eqz v0, :cond_0

    .line 1002
    int-to-long v0, p1

    .line 1004
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    const/4 v2, 0x0

    .line 1017
    .local v2, number:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->getItem(I)Lcom/android/phone/IMSConferenceCallMgr$Participant;

    move-result-object v1

    .line 1018
    .local v1, info:Lcom/android/phone/IMSConferenceCallMgr$Participant;
    if-nez p2, :cond_2

    .line 1019
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040088

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1020
    new-instance v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;

    .end local v0           #holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    invoke-direct {v0}, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;-><init>()V

    .line 1021
    .restart local v0       #holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v3, p2, v0}, Lcom/android/phone/IMSConferenceCallMain;->setParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;)V

    .line 1022
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1023
    if-eqz v1, :cond_0

    .line 1024
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v3, p2, v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->setHolderData(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 1036
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1037
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v3, p2, v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->showParticipantHolder(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    .line 1039
    :cond_1
    return-object p2

    .line 1026
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    check-cast v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;

    .line 1027
    .restart local v0       #holder:Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;
    if-eqz v1, :cond_0

    .line 1028
    iget-object v3, v0, Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1029
    if-eqz v2, :cond_3

    if-eqz v2, :cond_4

    iget-object v3, v1, Lcom/android/phone/IMSConferenceCallMgr$Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1030
    :cond_3
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    invoke-virtual {v3, p2, v0, v1}, Lcom/android/phone/IMSConferenceCallMain;->setHolderData(Landroid/view/View;Lcom/android/phone/IMSConferenceCallMain$ParticipantHolder;Lcom/android/phone/IMSConferenceCallMgr$Participant;)V

    goto :goto_0

    .line 1032
    :cond_4
    iget-object v3, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView do not set holder Data number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/IMSConferenceCallMain;->englog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/phone/IMSConferenceCallMain;->access$1300(Lcom/android/phone/IMSConferenceCallMain;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1009
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1010
    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallMain$ParticipantsAdapter;->this$0:Lcom/android/phone/IMSConferenceCallMain;

    #calls: Lcom/android/phone/IMSConferenceCallMain;->setDeleteButton()V
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallMain;->access$1200(Lcom/android/phone/IMSConferenceCallMain;)V

    .line 1011
    return-void
.end method
