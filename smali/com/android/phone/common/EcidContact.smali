.class public Lcom/android/phone/common/EcidContact;
.super Ljava/lang/Object;
.source "EcidContact.java"


# static fields
.field static COLUMN_CITY:I

.field static COLUMN_COMPANY:I

.field static COLUMN_COUNT:I

.field static COLUMN_COUNTRY:I

.field static COLUMN_FIRST_NAME:I

.field static COLUMN_FRIENDS:I

.field static COLUMN_ID:I

.field static COLUMN_IMAGE:I

.field static COLUMN_LAST_NAME:I

.field static COLUMN_NAME:I

.field static COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

.field static COLUMN_NUMBER:I

.field static COLUMN_PREFER_CID_IMAGE:I

.field static COLUMN_SAME_NETWORK:I

.field static COLUMN_STATE:I

.field static COLUMN_STATE_ABBR:I

.field private static final CONTENT_URI:Landroid/net/Uri;

.field static m_mapEcidContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/common/EcidContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_bFriends:Z

.field public m_bNoOutgoingCallRestriction:Z

.field public m_bPreferCidImage:Z

.field public m_bSameNetwork:Z

.field public m_bizName:Ljava/lang/String;

.field public m_callerId:Ljava/lang/String;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isNanp:Z

.field public m_lastName:Ljava/lang/String;

.field public m_number:Ljava/lang/String;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;

.field public m_urlPicture:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.cequint.ecid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Lcom/android/phone/common/EcidContact;->m_isNanp:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/phone/common/EcidContact;->m_bNoOutgoingCallRestriction:Z

    return-void
.end method

.method public static clearEcidContacts()V
    .locals 2

    .prologue
    .line 97
    sget-object v1, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    monitor-enter v1

    .line 98
    :try_start_0
    sget-object v0, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    monitor-exit v1

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/phone/common/EcidContact;
    .locals 4
    .parameter "ctx"
    .parameter "number"
    .parameter "numberType"

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v1, "EcidContact"

    const-string v3, "ECID AOSP VERSION: 2.3.6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    invoke-static {p1}, Lcom/android/phone/common/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/phone/common/EcidContact;

    move-result-object v0

    .line 112
    .local v0, cidContact:Lcom/android/phone/common/EcidContact;
    if-eqz v0, :cond_0

    .line 127
    .end local v0           #cidContact:Lcom/android/phone/common/EcidContact;
    :goto_0
    return-object v0

    .line 116
    .restart local v0       #cidContact:Lcom/android/phone/common/EcidContact;
    :cond_0
    new-instance v0, Lcom/android/phone/common/EcidContact;

    .end local v0           #cidContact:Lcom/android/phone/common/EcidContact;
    invoke-direct {v0}, Lcom/android/phone/common/EcidContact;-><init>()V

    .line 117
    .restart local v0       #cidContact:Lcom/android/phone/common/EcidContact;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/common/EcidContact;->m_number:Ljava/lang/String;

    .line 118
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/phone/common/EcidContact;->implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    .line 119
    sget-object v1, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v1, v2

    .line 118
    goto :goto_1

    .line 126
    .end local v0           #cidContact:Lcom/android/phone/common/EcidContact;
    :cond_2
    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLookup Invalid Args: ctx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/android/phone/common/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/phone/common/EcidContact;

    move-result-object v0

    .line 138
    .local v0, info:Lcom/android/phone/common/EcidContact;
    if-nez v0, :cond_0

    .line 139
    const-string v1, ""

    .line 166
    :goto_0
    return-object v1

    .line 144
    :cond_0
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    iget-object v1, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    .line 149
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_stateName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 151
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_stateName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    .line 161
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 162
    const-string v2, ""

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    .line 166
    :cond_3
    iget-object v1, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_4
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/phone/common/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/common/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_5
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_countryName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    iget-object v2, v0, Lcom/android/phone/common/EcidContact;->m_countryName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/phone/common/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getEcidContact(Ljava/lang/String;)Lcom/android/phone/common/EcidContact;
    .locals 3
    .parameter "number"

    .prologue
    .line 92
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, phoneNumber:Ljava/lang/String;
    sget-object v1, Lcom/android/phone/common/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/common/EcidContact;

    return-object v1
.end method

.method static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "nColumn"

    .prologue
    .line 257
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static readColumnIds(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 179
    const-string v0, "_ID"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_ID:I

    .line 180
    const-string v0, "_COUNT"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_COUNT:I

    .line 181
    const-string v0, "cid_pNumber"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_NUMBER:I

    .line 182
    const-string v0, "cid_pCityName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_CITY:I

    .line 183
    const-string v0, "cid_pStateName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_STATE:I

    .line 184
    const-string v0, "cid_pStateAbbr"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_STATE_ABBR:I

    .line 185
    const-string v0, "cid_pCountryName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_COUNTRY:I

    .line 186
    const-string v0, "cid_pCompany"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_COMPANY:I

    .line 187
    const-string v0, "cid_pName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_NAME:I

    .line 188
    const-string v0, "cid_pFirstName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_FIRST_NAME:I

    .line 189
    const-string v0, "cid_pLastName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_LAST_NAME:I

    .line 190
    const-string v0, "cid_pImage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_IMAGE:I

    .line 191
    const-string v0, "cid_bSameNetwork"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_SAME_NETWORK:I

    .line 192
    const-string v0, "cid_bFriends"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_FRIENDS:I

    .line 193
    const-string v0, "cid_bPreferCidImage"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_PREFER_CID_IMAGE:I

    .line 194
    const-string v0, "cid_bNoOutgoingCallRestriction"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/phone/common/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    .line 196
    return-void
.end method


# virtual methods
.method public getBizName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/phone/common/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/phone/common/EcidContact;->m_bizName:Ljava/lang/String;

    .line 373
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/phone/common/EcidContact;->m_cname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/phone/common/EcidContact;->m_cname:Ljava/lang/String;

    .line 379
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    iget-object v2, p0, Lcom/android/phone/common/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 306
    .local v0, bHasFName:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3

    .line 309
    if-eqz v0, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/phone/common/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    :goto_1
    return-object v2

    .line 305
    .end local v0           #bHasFName:Z
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    .restart local v0       #bHasFName:Z
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v2, "EcidContact"

    const-string v3, "null Contact First Name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLastName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    iget-object v2, p0, Lcom/android/phone/common/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 320
    .local v0, bHasLName:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3

    .line 323
    if-eqz v0, :cond_0

    .line 324
    iget-object v2, p0, Lcom/android/phone/common/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    :goto_1
    return-object v2

    .line 319
    .end local v0           #bHasLName:Z
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    .restart local v0       #bHasLName:Z
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_2
    const-string v2, "EcidContact"

    const-string v3, "null Contact Last Name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 9
    .parameter "context"
    .parameter "strNumber"
    .parameter "isSystemProvided"
    .parameter "isNotNanp"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_2

    .line 214
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    if-eqz p3, :cond_1

    const-string v1, "system"

    :goto_0
    aput-object v1, v4, v8

    const-string v1, "NOT-NANP"

    aput-object v1, v4, v7

    .line 218
    .local v4, flags:[Ljava/lang/String;
    :goto_1
    if-nez p4, :cond_4

    move v1, v7

    :goto_2
    iput-boolean v1, p0, Lcom/android/phone/common/EcidContact;->m_isNanp:Z

    .line 220
    sget-object v1, Lcom/android/phone/common/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_9

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-static {v6}, Lcom/android/phone/common/EcidContact;->readColumnIds(Landroid/database/Cursor;)V

    .line 225
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_NUMBER:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_callerId:Ljava/lang/String;

    .line 226
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_CITY:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_cityName:Ljava/lang/String;

    .line 227
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_STATE:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_stateName:Ljava/lang/String;

    .line 228
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_STATE_ABBR:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_stateAbbr:Ljava/lang/String;

    .line 229
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_COUNTRY:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_countryName:Ljava/lang/String;

    .line 231
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_COMPANY:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_bizName:Ljava/lang/String;

    .line 232
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_NAME:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_cname:Ljava/lang/String;

    .line 233
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_FIRST_NAME:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_firstName:Ljava/lang/String;

    .line 234
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_LAST_NAME:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_lastName:Ljava/lang/String;

    .line 235
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_IMAGE:I

    invoke-static {v6, v1}, Lcom/android/phone/common/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/common/EcidContact;->m_urlPicture:Ljava/lang/String;

    .line 236
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_SAME_NETWORK:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v7

    :goto_3
    iput-boolean v1, p0, Lcom/android/phone/common/EcidContact;->m_bSameNetwork:Z

    .line 237
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_FRIENDS:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v7

    :goto_4
    iput-boolean v1, p0, Lcom/android/phone/common/EcidContact;->m_bFriends:Z

    .line 238
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_PREFER_CID_IMAGE:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v7

    :goto_5
    iput-boolean v1, p0, Lcom/android/phone/common/EcidContact;->m_bPreferCidImage:Z

    .line 239
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    if-ltz v1, :cond_0

    .line 240
    sget v1, Lcom/android/phone/common/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_8

    :goto_6
    iput-boolean v7, p0, Lcom/android/phone/common/EcidContact;->m_bNoOutgoingCallRestriction:Z

    .line 244
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    const/4 v6, 0x0

    .line 253
    :goto_7
    return-void

    .line 214
    .end local v4           #flags:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    const-string v1, "user"

    goto/16 :goto_0

    .line 216
    :cond_2
    new-array v4, v7, [Ljava/lang/String;

    if-eqz p3, :cond_3

    const-string v1, "system"

    :goto_8
    aput-object v1, v4, v8

    .restart local v4       #flags:[Ljava/lang/String;
    goto/16 :goto_1

    .end local v4           #flags:[Ljava/lang/String;
    :cond_3
    const-string v1, "user"

    goto :goto_8

    .restart local v4       #flags:[Ljava/lang/String;
    :cond_4
    move v1, v8

    .line 218
    goto/16 :goto_2

    .restart local v6       #c:Landroid/database/Cursor;
    :cond_5
    move v1, v8

    .line 236
    goto :goto_3

    :cond_6
    move v1, v8

    .line 237
    goto :goto_4

    :cond_7
    move v1, v8

    .line 238
    goto :goto_5

    :cond_8
    move v7, v8

    .line 240
    goto :goto_6

    .line 251
    :cond_9
    const-string v1, "EcidContact"

    const-string v2, "No CityID found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
