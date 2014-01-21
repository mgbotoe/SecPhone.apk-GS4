.class public Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerViewForVT.java"


# instance fields
.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

.field private mLeftArrow:Landroid/widget/ImageView;

.field private mRightArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 123
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v1, :cond_0

    .line 124
    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 127
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "event"

    .prologue
    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 141
    .local v15, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 142
    .local v16, y:I
    const/4 v4, 0x0

    .line 143
    .local v4, closestDeltaX:I
    const/4 v5, 0x0

    .line 145
    .local v5, closestDeltaY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->getTouchables()Ljava/util/ArrayList;

    move-result-object v14

    .line 146
    .local v14, touchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const v10, 0x7fffffff

    .line 147
    .local v10, minDistance:I
    const/4 v3, 0x0

    .line 149
    .local v3, closest:Landroid/view/View;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 151
    .local v11, numTouchables:I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 153
    .local v13, touchableBounds:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_6

    .line 154
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 157
    .local v12, touchable:Landroid/view/View;
    invoke-virtual {v12, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 159
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 161
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 162
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 196
    .end local v12           #touchable:Landroid/view/View;
    :goto_1
    return v17

    .line 166
    .restart local v12       #touchable:Landroid/view/View;
    :cond_0
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    .line 167
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v6, v17, v15

    .line 175
    .local v6, deltaX:I
    :goto_2
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 176
    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    sub-int v7, v17, v16

    .line 183
    .local v7, deltaY:I
    :goto_3
    mul-int v17, v6, v6

    mul-int v18, v7, v7

    add-int v8, v17, v18

    .line 184
    .local v8, distanceSquared:I
    if-ge v8, v10, :cond_1

    .line 185
    move v10, v8

    .line 186
    move-object v3, v12

    .line 187
    move v4, v6

    .line 188
    move v5, v7

    .line 153
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 168
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #distanceSquared:I
    :cond_2
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    .line 169
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v6, v17, v15

    .restart local v6       #deltaX:I
    goto :goto_2

    .line 171
    .end local v6           #deltaX:I
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #deltaX:I
    goto :goto_2

    .line 177
    :cond_4
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 178
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v7, v17, v16

    .restart local v7       #deltaY:I
    goto :goto_3

    .line 180
    .end local v7           #deltaY:I
    :cond_5
    const/4 v7, 0x0

    .restart local v7       #deltaY:I
    goto :goto_3

    .line 192
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v12           #touchable:Landroid/view/View;
    :cond_6
    if-eqz v3, :cond_7

    .line 193
    int-to-float v0, v4

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 194
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1

    .line 196
    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 220
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :cond_1
    return-void
.end method

.method public resetDialPadControls()V
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "onehand_direction"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v2, :cond_2

    move v0, v2

    .line 93
    .local v0, isOneHandOptionRight:Z
    :goto_0
    iget-object v6, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hand_adaptable_operation"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v2, :cond_3

    move v1, v2

    .line 95
    .local v1, mIsHandAdaptEnable:Z
    :goto_1
    const-string v2, "ssuport_hand_adapt_operation"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 96
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 97
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    move v2, v4

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :cond_1
    :goto_4
    return-void

    .end local v0           #isOneHandOptionRight:Z
    .end local v1           #mIsHandAdaptEnable:Z
    :cond_2
    move v0, v3

    .line 92
    goto :goto_0

    .restart local v0       #isOneHandOptionRight:Z
    :cond_3
    move v1, v3

    .line 93
    goto :goto_1

    .restart local v1       #mIsHandAdaptEnable:Z
    :cond_4
    move v2, v5

    .line 97
    goto :goto_2

    :cond_5
    move v5, v4

    .line 100
    goto :goto_3

    .line 103
    :cond_6
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    .line 104
    iget-object v4, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    move v2, v3

    :goto_5
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :cond_7
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    :goto_6
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    move v2, v5

    .line 104
    goto :goto_5

    :cond_9
    move v5, v3

    .line 107
    goto :goto_6
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 0
    .parameter "dialer"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 59
    return-void
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialerForVT;Lcom/android/phone/InVTCallScreen;)V
    .locals 2
    .parameter "dialer"
    .parameter "inVTCallScreen"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 64
    const v0, 0x7f0a0261

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$1;

    invoke-direct {v1, p0, p2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    const v0, 0x7f0a0262

    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;

    invoke-direct {v1, p0, p2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT$2;-><init>(Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->resetDialPadControls()V

    .line 89
    return-void
.end method

.method public setLeftOneHandModeArrow()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_1
    return-void
.end method

.method public setRightOneHandModeArrow()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mRightArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->mLeftArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_1
    return-void
.end method
