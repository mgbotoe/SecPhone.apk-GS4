.class public Lcom/android/phone/common/CallLogAsync$AddCallArgs;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallArgs"
.end annotation


# instance fields
.field public final SIMId:I

.field public final callType:I

.field public final ci:Lcom/android/internal/telephony/CallerInfo;

.field public final context:Landroid/content/Context;

.field public final dbUri:Landroid/net/Uri;

.field public final dormantset:I

.field public final durationInSec:I

.field public final number:Ljava/lang/String;

.field public final presentation:I

.field public final remindme:I

.field public serviceType:I

.field public final sharedFilePath:Ljava/lang/String;

.field public final simnum:I

.field public final timestamp:J

.field public values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "simnum"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 387
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 406
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 407
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 408
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 409
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 410
    iput p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 411
    iput-wide p7, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 412
    const-wide/16 v0, 0x3e8

    div-long v0, p9, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 413
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 414
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 415
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 416
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 417
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 418
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 419
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIIJJLandroid/net/Uri;II)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "simnum"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    .line 283
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 285
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 286
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 287
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 288
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 289
    iput-wide p7, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 290
    const-wide/16 v0, 0x3e8

    div-long v0, p9, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 291
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 294
    iput p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 295
    iput p13, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 296
    iput p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 297
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 106
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 107
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 108
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 109
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 110
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 111
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 112
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 113
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 114
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 115
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 116
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJI)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "SIMId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 178
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 181
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 182
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 183
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 184
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 185
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 186
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 187
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 189
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 190
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 191
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 192
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 193
    iput p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJII)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 336
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 337
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 338
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 339
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 340
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 341
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 342
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 343
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 344
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 345
    iput p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 346
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 349
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJILandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "SIMId"
    .parameter "dbUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 232
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 233
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 234
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 235
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 236
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 237
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 238
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 239
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 240
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 241
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 242
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 243
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 244
    iput p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;ILandroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "value"
    .parameter "SIMId"
    .parameter "dbUri"

    .prologue
    .line 360
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 362
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 363
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 364
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 365
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 366
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 367
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 368
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 369
    iget-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 370
    iput-object p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 376
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "value"
    .parameter "dbUri"

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 156
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 157
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 158
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 159
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 160
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 162
    iget-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 163
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 165
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 166
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 167
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 130
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 131
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 132
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 133
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 134
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 135
    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 136
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 137
    iput-object v3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 138
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 139
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 140
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;I)V
    .locals 0
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "serviceType"

    .prologue
    .line 430
    invoke-direct/range {p0 .. p10}, Lcom/android/phone/common/CallLogAsync$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;)V

    .line 431
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->serviceType:I

    .line 432
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;II)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "remindme"
    .parameter "dormantset"

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 259
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 260
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 261
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 262
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 263
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 264
    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 265
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 266
    iput-object v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 267
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 268
    iput p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;III)V
    .locals 2
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "remindme"
    .parameter "dormantset"
    .parameter "SIMId"

    .prologue
    .line 309
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 311
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 312
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 313
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 314
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 315
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 316
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 317
    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 320
    iput p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 321
    iput p12, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 323
    iput p13, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 324
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJLandroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "ci"
    .parameter "number"
    .parameter "presentation"
    .parameter "callType"
    .parameter "timestamp"
    .parameter "durationInMillis"
    .parameter "dbUri"
    .parameter "sharedFilePath"

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->context:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->ci:Lcom/android/internal/telephony/CallerInfo;

    .line 208
    iput-object p3, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->number:Ljava/lang/String;

    .line 209
    iput p4, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->presentation:I

    .line 210
    iput p5, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->callType:I

    .line 211
    iput-wide p6, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->timestamp:J

    .line 212
    const-wide/16 v0, 0x3e8

    div-long v0, p8, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->durationInSec:I

    .line 213
    iput-object p10, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dbUri:Landroid/net/Uri;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->values:Landroid/content/ContentValues;

    .line 215
    iput-object p11, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->sharedFilePath:Ljava/lang/String;

    .line 216
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->remindme:I

    .line 217
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->dormantset:I

    .line 218
    iput v2, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->simnum:I

    .line 219
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/common/CallLogAsync$AddCallArgs;->SIMId:I

    .line 220
    return-void
.end method
