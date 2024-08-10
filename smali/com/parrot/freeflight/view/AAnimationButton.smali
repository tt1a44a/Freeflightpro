.class public abstract Lcom/parrot/freeflight/view/AAnimationButton;
.super Landroid/widget/FrameLayout;
.source "AAnimationButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;,
        Lcom/parrot/freeflight/view/AAnimationButton$State;
    }
.end annotation


# static fields
.field protected static final ANIM_DURATION:I = 0xc8

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_OPTIONS:I = 0x1

.field private static final STATE_PROGRESS:I = 0x2


# instance fields
.field private mAnimationId:I

.field private mCloseView:Landroid/view/View;

.field private mDisabledColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mImageView:Landroid/widget/ImageView;

.field private mListener:Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;

.field protected mMainLayout:Landroid/view/View;

.field protected mMainMargin:I

.field private mNameView:Landroid/widget/TextView;

.field private mOptionLeftIcon:Landroid/graphics/drawable/Drawable;

.field private mOptionLeftIconView:Landroid/widget/ImageView;

.field private mOptionLeftText:Ljava/lang/String;

.field private mOptionLeftTitleView:Landroid/widget/TextView;

.field private mOptionLeftView:Landroid/view/View;

.field private mOptionRightIcon:Landroid/graphics/drawable/Drawable;

.field private mOptionRightIconView:Landroid/widget/ImageView;

.field private mOptionRightText:Ljava/lang/String;

.field private mOptionRightTitleView:Landroid/widget/TextView;

.field private mOptionRightView:Landroid/view/View;

.field protected mOptionsLayout:Landroid/view/View;

.field protected mOptionsMargin:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field protected mProgressMargin:I

.field private mState:I

.field protected mStopMargin:I

.field private mStopView:Landroid/widget/TextView;

.field private mTintColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/view/AAnimationButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/view/AAnimationButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/view/AAnimationButton;)Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/view/AAnimationButton;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mListener:Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/view/AAnimationButton;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/view/AAnimationButton;

    .prologue
    .line 29
    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    return v0
.end method

.method private animateOptions(Z)V
    .locals 11
    .param p1, "show"    # Z

    .prologue
    const/4 v6, 0x0

    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    iget v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopMargin:I

    iget v3, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainMargin:I

    iget-object v4, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionsLayout:Landroid/view/View;

    iget v5, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionsMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/view/AAnimationButton;->animate(Landroid/view/View;IILandroid/view/View;II)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v5, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionsLayout:Landroid/view/View;

    iget v7, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionsMargin:I

    iget-object v8, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    iget v9, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainMargin:I

    iget v10, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopMargin:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/parrot/freeflight/view/AAnimationButton;->animate(Landroid/view/View;IILandroid/view/View;II)V

    goto :goto_0
.end method

.method private animateProgress(Z)V
    .locals 7
    .param p1, "show"    # Z

    .prologue
    .line 367
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionsLayout:Landroid/view/View;

    const/4 v2, 0x0

    iget v3, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionsMargin:I

    iget-object v4, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    iget v5, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainMargin:I

    iget v6, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mProgressMargin:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/view/AAnimationButton;->animate(Landroid/view/View;IILandroid/view/View;II)V

    .line 374
    :goto_0
    return-void

    .line 369
    :cond_0
    if-eqz p1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    iget v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopMargin:I

    iget v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mProgressMargin:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->animate(Landroid/view/View;II)V

    goto :goto_0

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    iget v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mProgressMargin:I

    iget v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopMargin:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->animate(Landroid/view/View;II)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 213
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/view/AAnimationButton;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    invoke-direct {p0}, Lcom/parrot/freeflight/view/AAnimationButton;->initViews()V

    .line 215
    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 218
    if-nez p2, :cond_0

    .line 239
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/parrot/freeflight/R$styleable;->AAnimationButton:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 228
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mTitleText:Ljava/lang/String;

    .line 229
    const/4 v1, 0x5

    const v2, 0x7f050138

    .line 230
    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 229
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mTintColor:I

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 232
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftText:Ljava/lang/String;

    .line 233
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftIcon:Landroid/graphics/drawable/Drawable;

    .line 234
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightText:Ljava/lang/String;

    .line 235
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/AAnimationButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 245
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/AAnimationButton;->getLayoutRes()I

    move-result v2

    invoke-static {v0, v2, p0}, Lcom/parrot/freeflight/view/AAnimationButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 248
    const v2, 0x7f0a0028

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    .line 249
    const v2, 0x7f0a002a

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionsLayout:Landroid/view/View;

    .line 250
    const v2, 0x7f0a0031

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mProgressBar:Landroid/widget/ProgressBar;

    .line 251
    const v2, 0x7f0a0032

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopView:Landroid/widget/TextView;

    .line 252
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mCloseView:Landroid/view/View;

    .line 253
    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftView:Landroid/view/View;

    .line 254
    const v2, 0x7f0a002f

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightView:Landroid/view/View;

    .line 255
    const v2, 0x7f0a0033

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mNameView:Landroid/widget/TextView;

    .line 256
    const v2, 0x7f0a0027

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mImageView:Landroid/widget/ImageView;

    .line 257
    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftTitleView:Landroid/widget/TextView;

    .line 258
    const v2, 0x7f0a0030

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightTitleView:Landroid/widget/TextView;

    .line 259
    const v2, 0x7f0a002b

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftIconView:Landroid/widget/ImageView;

    .line 260
    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightIconView:Landroid/widget/ImageView;

    .line 263
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/AAnimationButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 264
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f050112

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mDisabledColor:I

    .line 265
    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainMargin:I

    .line 266
    const v2, 0x7f060067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionsMargin:I

    .line 267
    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopMargin:I

    .line 268
    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mProgressMargin:I

    .line 271
    iget v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mTintColor:I

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->tintViews(I)V

    .line 274
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mNameView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mTitleText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/view/AAnimationButton$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/view/AAnimationButton$1;-><init>(Lcom/parrot/freeflight/view/AAnimationButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mCloseView:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/view/AAnimationButton$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/view/AAnimationButton$2;-><init>(Lcom/parrot/freeflight/view/AAnimationButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopView:Landroid/widget/TextView;

    new-instance v3, Lcom/parrot/freeflight/view/AAnimationButton$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/view/AAnimationButton$3;-><init>(Lcom/parrot/freeflight/view/AAnimationButton;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftView:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/view/AAnimationButton$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/view/AAnimationButton$4;-><init>(Lcom/parrot/freeflight/view/AAnimationButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightView:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/view/AAnimationButton$5;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/view/AAnimationButton$5;-><init>(Lcom/parrot/freeflight/view/AAnimationButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mNameView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 334
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 335
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftTitleView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 336
    iget-object v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightTitleView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 337
    return-void
.end method

.method private tintViews(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mStopView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mCloseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mCloseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 356
    return-void
.end method


# virtual methods
.method protected animate(Landroid/view/View;II)V
    .locals 7
    .param p1, "viewToHide"    # Landroid/view/View;
    .param p2, "originVthMargin"    # I
    .param p3, "destVthMargin"    # I

    .prologue
    const/4 v5, 0x0

    .line 383
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/parrot/freeflight/view/AAnimationButton;->animate(Landroid/view/View;IILandroid/view/View;II)V

    .line 384
    return-void
.end method

.method protected animate(Landroid/view/View;IILandroid/view/View;II)V
    .locals 4
    .param p1, "viewToHide"    # Landroid/view/View;
    .param p2, "originVthMargin"    # I
    .param p3, "destVthMargin"    # I
    .param p4, "viewToShow"    # Landroid/view/View;
    .param p5, "originVtsMargin"    # I
    .param p6, "destVtsMargin"    # I

    .prologue
    .line 388
    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/view/AAnimationButton;->getTranslateAnimation(Landroid/view/View;II)Landroid/view/animation/Animation;

    move-result-object v0

    .line 390
    .local v0, "closeAnimation":Landroid/view/animation/Animation;
    if-eqz p4, :cond_0

    .line 391
    invoke-virtual {p0, p4, p5, p6}, Lcom/parrot/freeflight/view/AAnimationButton;->getTranslateAnimation(Landroid/view/View;II)Landroid/view/animation/Animation;

    move-result-object v1

    .line 392
    .local v1, "openAnimation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 394
    new-instance v2, Lcom/parrot/freeflight/view/AAnimationButton$6;

    invoke-direct {v2, p0, p4, v1}, Lcom/parrot/freeflight/view/AAnimationButton$6;-><init>(Lcom/parrot/freeflight/view/AAnimationButton;Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 410
    .end local v1    # "openAnimation":Landroid/view/animation/Animation;
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 411
    return-void
.end method

.method public closeOptions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->animateOptions(Z)V

    .line 154
    iput v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    goto :goto_0
.end method

.method public closeProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->setProgress(I)V

    .line 172
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/view/AAnimationButton;->animateProgress(Z)V

    .line 173
    iput v2, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    goto :goto_0
.end method

.method public getAnimationId()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mAnimationId:I

    return v0
.end method

.method protected abstract getLayoutRes()I
.end method

.method protected abstract getTranslateAnimation(Landroid/view/View;II)Landroid/view/animation/Animation;
.end method

.method public openOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 140
    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    if-ne v0, v1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/view/AAnimationButton;->animateOptions(Z)V

    .line 145
    iput v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    goto :goto_0
.end method

.method public openProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 158
    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    if-ne v0, v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->animateProgress(Z)V

    .line 163
    iput v1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    goto :goto_0
.end method

.method public setAnimationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 184
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mTintColor:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/view/AAnimationButton;->tintViews(I)V

    .line 185
    if-nez p1, :cond_2

    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/AAnimationButton;->closeOptions()V

    .line 190
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mMainLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 191
    return-void

    .line 184
    :cond_1
    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mDisabledColor:I

    goto :goto_0

    .line 187
    :cond_2
    if-nez p1, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/parrot/freeflight/view/AAnimationButton;->closeProgress()V

    goto :goto_1
.end method

.method public setAnimationIcon(I)V
    .locals 1
    .param p1, "iconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 434
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    return-void
.end method

.method public setAnimationId(I)V
    .locals 0
    .param p1, "animationId"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mAnimationId:I

    .line 204
    return-void
.end method

.method public setAnimationName(I)V
    .locals 1
    .param p1, "textRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 430
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 431
    return-void
.end method

.method public setListener(Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mListener:Lcom/parrot/freeflight/view/AAnimationButton$AnimationButtonListener;

    .line 195
    return-void
.end method

.method public setOptionLeftIcon(I)V
    .locals 1
    .param p1, "iconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 454
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    return-void
.end method

.method public setOptionLeftName(I)V
    .locals 1
    .param p1, "textRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 438
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 439
    return-void
.end method

.method public setOptionLeftName(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionLeftTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public setOptionRightIcon(I)V
    .locals 1
    .param p1, "iconRes"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 458
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    return-void
.end method

.method public setOptionRightName(I)V
    .locals 1
    .param p1, "textRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 442
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 443
    return-void
.end method

.method public setOptionRightName(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mOptionRightTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 177
    iget v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/view/AAnimationButton;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
