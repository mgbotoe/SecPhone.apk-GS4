.class public Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "RejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RejectMsgItemAdapter"
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "_context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1158
    .local p3, _rejectmsgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1160
    iput-object p2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->context:Landroid/app/Activity;

    .line 1161
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1162
    iput-object p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->rejectMsgList:Ljava/util/ArrayList;

    .line 1163
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1177
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1181
    move-object v4, p2

    .line 1182
    .local v4, v:Landroid/view/View;
    const/4 v1, 0x0

    .line 1184
    .local v1, layoutrejectmsgitem:Landroid/widget/LinearLayout;
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 1185
    check-cast v1, Landroid/widget/LinearLayout;

    .line 1191
    :goto_0
    const v5, 0x7f0a02e8

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1192
    .local v2, rejectmsg_item_text_remind:Landroid/widget/TextView;
    const v5, 0x7f0a02ca

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1195
    .local v3, rejectmsg_remind:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    #getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->remindList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$900(Lcom/android/phone/callsettings/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_1

    .line 1197
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1202
    :goto_1
    return-object v1

    .line 1187
    .end local v2           #rejectmsg_item_text_remind:Landroid/widget/TextView;
    .end local v3           #rejectmsg_remind:Landroid/widget/ImageView;
    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->context:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMsgItemAdapter;->context:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1188
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f0400ad

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #layoutrejectmsgitem:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .restart local v1       #layoutrejectmsgitem:Landroid/widget/LinearLayout;
    goto :goto_0

    .line 1199
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    .restart local v2       #rejectmsg_item_text_remind:Landroid/widget/TextView;
    .restart local v3       #rejectmsg_remind:Landroid/widget/ImageView;
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
