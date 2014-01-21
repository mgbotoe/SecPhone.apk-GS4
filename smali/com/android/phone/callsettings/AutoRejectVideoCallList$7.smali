.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;
.super Ljava/lang/Object;
.source "AutoRejectVideoCallList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$7;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    #setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mFirstVisibleItem:I
    invoke-static {v0, p2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1402(Lcom/android/phone/callsettings/AutoRejectVideoCallList;I)I

    .line 450
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 454
    return-void
.end method
