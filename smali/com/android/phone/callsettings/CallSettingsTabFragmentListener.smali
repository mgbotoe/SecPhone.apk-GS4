.class public Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;
.super Ljava/lang/Object;
.source "CallSettingsTabFragmentListener.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBundle:Landroid/os/Bundle;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "tag"
    .parameter
    .parameter "bdl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;,"Lcom/android/phone/callsettings/CallSettingsTabFragmentListener<TT;>;"
    .local p3, clz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mTag:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mClass:Ljava/lang/Class;

    .line 47
    iput-object p4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mBundle:Landroid/os/Bundle;

    .line 48
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 77
    .local p0, this:Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;,"Lcom/android/phone/callsettings/CallSettingsTabFragmentListener<TT;>;"
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 5
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 52
    .local p0, this:Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;,"Lcom/android/phone/callsettings/CallSettingsTabFragmentListener<TT;>;"
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    if-nez v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 54
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 55
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    const-string v2, "sec_product_feature_common_dsds_support"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    iput-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    .line 57
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 67
    .end local v0           #fragment:Landroid/app/Fragment;
    .end local v1           #fragmentManager:Landroid/app/FragmentManager;
    :goto_0
    return-void

    .line 60
    .restart local v0       #fragment:Landroid/app/Fragment;
    .restart local v1       #fragmentManager:Landroid/app/FragmentManager;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mBundle:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    .line 61
    const v2, 0x1020002

    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 65
    .end local v0           #fragment:Landroid/app/Fragment;
    .end local v1           #fragmentManager:Landroid/app/FragmentManager;
    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 1
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 69
    .local p0, this:Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;,"Lcom/android/phone/callsettings/CallSettingsTabFragmentListener<TT;>;"
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsTabFragmentListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 73
    :cond_0
    return-void
.end method
