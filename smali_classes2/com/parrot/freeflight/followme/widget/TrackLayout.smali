.class public Lcom/parrot/freeflight/followme/widget/TrackLayout;
.super Landroid/widget/RelativeLayout;
.source "TrackLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NEUTRAL_RATIO:F = 0.9f


# instance fields
.field private mBothWays:Z

.field private mHorizontalLimit:F

.field private mInitialButtonXPosition:F

.field private mLeftTextContainer:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLeftTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mResetOnRelease:Z

.field private mRightTextContainer:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRightTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSwitchedOn:Z

.field private mThumbDrawableOff:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mThumbDrawableOn:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mThumbImage:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTrackListener:Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/parrot/freeflight/followme/widget/TrackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/followme/widget/TrackLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0c008e

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    const v4, 0x7f0a0222

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    .line 68
    const v4, 0x7f0a0486

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mLeftTextView:Landroid/widget/TextView;

    .line 69
    const v4, 0x7f0a04b4

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mRightTextView:Landroid/widget/TextView;

    .line 70
    const v4, 0x7f0a02d3

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mLeftTextContainer:Landroid/view/View;

    .line 71
    const v4, 0x7f0a02d4

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mRightTextContainer:Landroid/view/View;

    .line 73
    if-eqz p2, :cond_1

    .line 74
    sget-object v4, Lcom/parrot/freeflight/R$styleable;->TrackLayout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 76
    .local v1, "customAttributes":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 78
    .local v0, "attr":I
    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :pswitch_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbDrawableOff:Landroid/graphics/drawable/Drawable;

    .line 81
    iget-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbDrawableOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 84
    :pswitch_1
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbDrawableOn:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 87
    :pswitch_2
    iget-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 90
    :pswitch_3
    iget-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mRightTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    :pswitch_4
    iget-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mLeftTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 96
    :pswitch_5
    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mBothWays:Z

    goto :goto_1

    .line 99
    :pswitch_6
    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mResetOnRelease:Z

    goto :goto_1

    .line 105
    .end local v0    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    .end local v1    # "customAttributes":Landroid/content/res/TypedArray;
    .end local v2    # "i":I
    :cond_1
    iget-boolean v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mBothWays:Z

    if-eqz v4, :cond_2

    .line 108
    iget-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 109
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 110
    iget-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .end local v3    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    invoke-virtual {p0, p0}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mLeftTextView:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 116
    iget-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mRightTextView:Landroid/widget/TextView;

    invoke-static {p1, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 117
    return-void

    .line 112
    :cond_2
    iget-object v4, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mLeftTextContainer:Landroid/view/View;

    invoke-direct {p0, v4, v6}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setViewWidth(Landroid/view/View;I)V

    goto :goto_2

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setThumbTranslation(F)V
    .locals 2
    .param p1, "translationX"    # F

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 178
    iget-boolean v0, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mBothWays:Z

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mLeftTextContainer:Landroid/view/View;

    float-to-int v1, p1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setViewWidth(Landroid/view/View;I)V

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mRightTextContainer:Landroid/view/View;

    iget v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    sub-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setViewWidth(Landroid/view/View;I)V

    .line 182
    :cond_0
    return-void
.end method

.method private setViewWidth(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 186
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    return v2

    .line 133
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mInitialButtonXPosition:F

    .line 134
    iget-boolean v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mBothWays:Z

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v5, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mInitialButtonXPosition:F

    sub-float v0, v1, v5

    .line 143
    .local v0, "translationX":F
    iget-boolean v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mBothWays:Z

    if-eqz v1, :cond_3

    .line 144
    iget v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    neg-float v1, v1

    iget v5, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    invoke-static {v0, v1, v5}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    .line 151
    :goto_1
    iget-boolean v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mSwitchedOn:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    add-float/2addr v1, v0

    :goto_2
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setThumbTranslation(F)V

    .line 153
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    div-float/2addr v1, v5

    const v5, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_0

    .line 154
    iget-boolean v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mSwitchedOn:Z

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mSwitchedOn:Z

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mInitialButtonXPosition:F

    .line 156
    iget-object v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbDrawableOn:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 157
    iget-object v3, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mSwitchedOn:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbDrawableOn:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mTrackListener:Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;

    if-eqz v1, :cond_0

    .line 160
    cmpl-float v1, v0, v4

    if-lez v1, :cond_8

    .line 161
    iget-object v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mTrackListener:Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;

    invoke-interface {v1, p0}, Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;->onRightSlide(Lcom/parrot/freeflight/followme/widget/TrackLayout;)V

    goto/16 :goto_0

    .line 145
    :cond_3
    iget-boolean v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mSwitchedOn:Z

    if-eqz v1, :cond_4

    .line 146
    iget v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    neg-float v1, v1

    invoke-static {v0, v1, v4}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    goto :goto_1

    .line 148
    :cond_4
    iget v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    invoke-static {v0, v4, v1}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(FFF)F

    move-result v0

    goto :goto_1

    :cond_5
    move v1, v0

    .line 151
    goto :goto_2

    :cond_6
    move v1, v3

    .line 154
    goto :goto_3

    .line 157
    :cond_7
    iget-object v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbDrawableOff:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 163
    :cond_8
    iget-object v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mTrackListener:Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;

    invoke-interface {v1, p0}, Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;->onLeftSlide(Lcom/parrot/freeflight/followme/widget/TrackLayout;)V

    goto/16 :goto_0

    .line 169
    .end local v0    # "translationX":F
    :pswitch_2
    iget-boolean v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mResetOnRelease:Z

    if-eqz v1, :cond_9

    iput-boolean v3, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mSwitchedOn:Z

    .line 170
    :cond_9
    iget-boolean v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mSwitchedOn:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mHorizontalLimit:F

    :goto_5
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setThumbTranslation(F)V

    goto/16 :goto_0

    :cond_a
    move v1, v4

    goto :goto_5

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mSwitchedOn:Z

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/followme/widget/TrackLayout;->setThumbTranslation(F)V

    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mThumbDrawableOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    return-void
.end method

.method public setTrackListener(Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;)V
    .locals 0
    .param p1, "trackListener"    # Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/followme/widget/TrackLayout;->mTrackListener:Lcom/parrot/freeflight/followme/widget/TrackLayout$TrackListener;

    .line 121
    return-void
.end method
