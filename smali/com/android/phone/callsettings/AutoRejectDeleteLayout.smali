.class public Lcom/android/phone/callsettings/AutoRejectDeleteLayout;
.super Landroid/widget/LinearLayout;
.source "AutoRejectDeleteLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field final ATTR:Ljava/lang/String;

.field final NAMESPACE:Ljava/lang/String;

.field checkable:Landroid/view/View;

.field checkableId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "http://schemas.android.com/apk/res/android"

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->NAMESPACE:Ljava/lang/String;

    .line 29
    const-string v0, "checkable"

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->ATTR:Ljava/lang/String;

    .line 37
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "checkable"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkableId:I

    .line 38
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 57
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkableId:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectDeleteLayout;->checkable:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    goto :goto_0
.end method
