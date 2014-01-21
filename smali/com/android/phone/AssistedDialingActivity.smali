.class public Lcom/android/phone/AssistedDialingActivity;
.super Landroid/preference/PreferenceActivity;
.source "AssistedDialingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field private static final RESET_COUNTRY_DETAILS:Landroid/net/Uri;

.field private static final UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

.field public static area:Ljava/lang/String;

.field public static nationalnumberlength:Ljava/lang/String;


# instance fields
.field private actionBarSwitch:Landroid/widget/Switch;

.field cr:Landroid/content/ContentResolver;

.field private la:Landroid/widget/SimpleCursorAdapter;

.field private mAreaCode:Landroid/preference/EditTextPreference;

.field private mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Landroid/preference/EditTextPreference;

.field private mIDD:Landroid/preference/EditTextPreference;

.field private mNDD:Landroid/preference/EditTextPreference;

.field private mNationalNumberLength:Landroid/preference/EditTextPreference;

.field private mReferenceText:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const-string v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    .line 63
    const-string v0, "content://assisteddialing/mcc_otalookup/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    .line 64
    const-string v0, "content://assisteddialing/mcc_otalookup/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    .line 85
    sput-object v1, Lcom/android/phone/AssistedDialingActivity;->area:Ljava/lang/String;

    .line 86
    sput-object v1, Lcom/android/phone/AssistedDialingActivity;->nationalnumberlength:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private displayHelp()V
    .locals 4

    .prologue
    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, aDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09065d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 296
    const v2, 0x7f09066b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 297
    const v2, 0x7f090669

    new-instance v3, Lcom/android/phone/AssistedDialingActivity$1;

    invoke-direct {v3, p0}, Lcom/android/phone/AssistedDialingActivity$1;-><init>(Lcom/android/phone/AssistedDialingActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 300
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 301
    .local v1, ad:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 302
    return-void
.end method

.method private getReferenceCountryAndSet()V
    .locals 14

    .prologue
    .line 165
    const-string v0, "AssistedDialingActivity"

    const-string v1, "getReferenceCountry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    .line 167
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 168
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingActivity;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 169
    .local v3, mCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f040008

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "country"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mcc"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "idd"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ndd"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "nanp"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "nbpcd"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "countrycode"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->la:Landroid/widget/SimpleCursorAdapter;

    .line 175
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, mdn:Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 178
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 179
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, country:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, idd:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 182
    .local v13, ndd:Ljava/lang/String;
    const/4 v0, 0x6

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 183
    .local v9, countrycode:Ljava/lang/String;
    const/16 v0, 0x8

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    .local v7, areaCityCode:Ljava/lang/String;
    const/16 v0, 0x9

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, nationalNumLen:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 187
    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 194
    :cond_0
    :goto_0
    if-nez v12, :cond_1

    .line 195
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_a

    .line 196
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 202
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_3

    .line 206
    if-eqz v7, :cond_b

    .line 207
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_area_code"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 215
    if-eqz v10, :cond_c

    .line 216
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_idd"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_5

    .line 223
    if-eqz v13, :cond_d

    .line 224
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v13}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_ndd"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_6

    .line 231
    if-eqz v9, :cond_e

    .line 232
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_country_code"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_7

    .line 239
    if-eqz v12, :cond_f

    .line 240
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_nnl"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    :cond_7
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v7           #areaCityCode:Ljava/lang/String;
    .end local v8           #country:Ljava/lang/String;
    .end local v9           #countrycode:Ljava/lang/String;
    .end local v10           #idd:Ljava/lang/String;
    .end local v12           #nationalNumLen:Ljava/lang/String;
    .end local v13           #ndd:Ljava/lang/String;
    :cond_8
    return-void

    .line 190
    .restart local v7       #areaCityCode:Ljava/lang/String;
    .restart local v8       #country:Ljava/lang/String;
    .restart local v9       #countrycode:Ljava/lang/String;
    .restart local v10       #idd:Ljava/lang/String;
    .restart local v12       #nationalNumLen:Ljava/lang/String;
    .restart local v13       #ndd:Ljava/lang/String;
    :cond_9
    const-string v0, "AssistedDialingActivity"

    const-string v1, "mdn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 198
    :cond_a
    const-string v0, "AssistedDialingActivity"

    const-string v1, "mdn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 210
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_area_code"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f09066f

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_2

    .line 219
    :cond_c
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    const v1, 0x7f09066d

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_3

    .line 227
    :cond_d
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    const v1, 0x7f09066e

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_4

    .line 235
    :cond_e
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    const v1, 0x7f09066c

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_5

    .line 243
    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_dialing_nnl"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    const v1, 0x7f090670

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(I)V

    goto :goto_6

    .line 169
    :array_0
    .array-data 0x4
        0x26t 0x0t 0xat 0x7ft
        0x27t 0x0t 0xat 0x7ft
        0x28t 0x0t 0xat 0x7ft
        0x29t 0x0t 0xat 0x7ft
        0x2at 0x0t 0xat 0x7ft
        0x2bt 0x0t 0xat 0x7ft
        0x2ct 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private resetDetails()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    const-string v0, "AssistedDialingActivity"

    const-string v1, "resetDetails"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 287
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/phone/AssistedDialingActivity;->RESET_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingActivity;->getReferenceCountryAndSet()V

    .line 291
    return-void
.end method

.method private updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "where"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 381
    const-string v1, "AssistedDialingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDetails uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 383
    .local v0, updatevalue:Landroid/content/ContentValues;
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 385
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 387
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v4, 0x7f040009

    invoke-virtual {p0, v4}, Lcom/android/phone/AssistedDialingActivity;->addPreferencesFromResource(I)V

    .line 100
    const-string v4, "AssistedDialingActivity"

    const-string v5, "onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 104
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    move-object v1, p0

    .line 105
    .local v1, activity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    .line 107
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 109
    .local v2, padding:I
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 110
    invoke-virtual {v1}, Lcom/android/phone/AssistedDialingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 112
    invoke-virtual {v1}, Lcom/android/phone/AssistedDialingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 117
    new-instance v4, Lcom/android/phone/AssistedDialingEnabler;

    iget-object v5, p0, Lcom/android/phone/AssistedDialingActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/phone/AssistedDialingActivity;->actionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v5, v6}, Lcom/android/phone/AssistedDialingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    .line 119
    const-string v4, "button_current_country_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mReferenceText:Landroid/preference/PreferenceScreen;

    .line 120
    const-string v4, "Area_city_code"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    .line 121
    const-string v4, "IDD_prefix"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    .line 122
    const-string v4, "NDD_prefix"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    .line 123
    const-string v4, "country_code"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    .line 124
    const-string v4, "National_number_length"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    .line 126
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v4, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 133
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 134
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 136
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 254
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 161
    const-string v0, "AssistedDialingActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 280
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 271
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingActivity;->resetDetails()V

    goto :goto_0

    .line 274
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingActivity;->displayHelp()V

    goto :goto_0

    .line 277
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->onBackPressed()V

    goto :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f0a03b4 -> :sswitch_0
        0x7f0a03b5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 152
    const-string v0, "AssistedDialingActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/AssistedDialingEnabler;->pause()V

    .line 156
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 313
    const-string v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange preference : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_reference_country"

    const/16 v5, 0xd4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_1

    .line 318
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_area_code"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 322
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "area_city_code"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_2

    .line 325
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .restart local v2       #value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_idd"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 328
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 329
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "idd"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #value:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_3

    .line 332
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    .restart local v2       #value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_ndd"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 335
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 336
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "ndd"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #value:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_4

    .line 339
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    .restart local v2       #value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_country_code"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 343
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "countrycode"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 345
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #value:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_0

    .line 346
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    .restart local v2       #value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assisted_dialing_nnl"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    sget-object v3, Lcom/android/phone/AssistedDialingActivity;->UPDATE_COUNTRY_DETAILS:Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 350
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "national_num_len"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/phone/AssistedDialingActivity;->updateDetails(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v3, "AssistedDialingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 358
    const-string v1, "AssistedDialingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick preference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_area_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_idd"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mIDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_3

    .line 368
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_ndd"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mNDD:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 370
    :cond_3
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mCountryCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    if-ne p2, v1, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/android/phone/AssistedDialingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing_nnl"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/android/phone/AssistedDialingActivity;->mNationalNumberLength:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 260
    const v2, 0x7f0a03b4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    .line 261
    .local v1, reset:Landroid/view/MenuItem;
    const v2, 0x7f020618

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 262
    const v2, 0x7f0a03b5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 263
    .local v0, help:Landroid/view/MenuItem;
    const v2, 0x7f02060f

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 264
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 141
    const-string v0, "AssistedDialingActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/android/phone/AssistedDialingActivity;->getReferenceCountryAndSet()V

    .line 144
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/phone/AssistedDialingActivity;->mAssistedDialingEnabler:Lcom/android/phone/AssistedDialingEnabler;

    invoke-virtual {v0}, Lcom/android/phone/AssistedDialingEnabler;->resume()V

    .line 147
    :cond_0
    return-void
.end method
