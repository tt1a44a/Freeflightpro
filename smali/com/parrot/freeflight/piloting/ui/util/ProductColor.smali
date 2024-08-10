.class public Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
.super Ljava/lang/Object;
.source "ProductColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;
    }
.end annotation


# instance fields
.field private final mColorStateList:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadFocusColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field protected final mMainColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSliderColorStateList:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mTileColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    .line 50
    const v5, 0x7f0500a3

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    .line 51
    const v5, 0x7f050121

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 52
    const v5, 0x7f05009e

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mGamePadFocusColor:I

    .line 53
    const v5, 0x7f05012e

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 54
    .local v1, "mainLightColor":I
    const v5, 0x7f050138

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 56
    .local v2, "secondaryColor":I
    const/4 v5, 0x7

    new-array v4, v5, [[I

    new-array v5, v9, [I

    const v6, 0x101009c

    aput v6, v5, v8

    aput-object v5, v4, v8

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v9

    new-array v5, v9, [I

    const v6, -0x101009e

    aput v6, v5, v8

    aput-object v5, v4, v7

    const/4 v5, 0x3

    new-array v6, v9, [I

    const v7, 0x10100a1

    aput v7, v6, v8

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v6, v9, [I

    const v7, 0x10100a0

    aput v7, v6, v8

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-array v6, v9, [I

    const v7, 0x10100a7

    aput v7, v6, v8

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-array v6, v8, [I

    aput-object v6, v4, v5

    .line 66
    .local v4, "states":[[I
    invoke-direct {p0, v1, v2, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getColorStateColors(III)[I

    move-result-object v0

    .line 67
    .local v0, "colors":[I
    iget v5, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-direct {p0, v1, v2, v5}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getColorStateColors(III)[I

    move-result-object v3

    .line 69
    .local v3, "sliderColors":[I
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v4, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 70
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mSliderColorStateList:Landroid/content/res/ColorStateList;

    .line 71
    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x10100a0
        -0x101009e
    .end array-data
.end method

.method private getColorStateColors(III)[I
    .locals 3
    .param p1, "mainLightColor"    # I
    .param p2, "secondaryColor"    # I
    .param p3, "defaultColor"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mGamePadFocusColor:I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v2, v0, v1

    const/4 v1, 0x6

    aput p3, v0, v1

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 87
    return-void
.end method

.method public apply(Landroid/widget/Button;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 110
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonWithStateList(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    .line 111
    return-void
.end method

.method public apply(Landroid/widget/CheckBox;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/CheckBox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonWithStateList(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    .line 91
    return-void
.end method

.method public apply(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/EditText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 107
    return-void
.end method

.method public apply(Landroid/widget/ImageButton;Z)V
    .locals 1
    .param p1, "imageButton"    # Landroid/widget/ImageButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focused"    # Z

    .prologue
    .line 114
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0, p2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonDrawable(Landroid/widget/ImageView;IZ)V

    .line 115
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0, p2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonBackground(Landroid/widget/ImageView;IZ)V

    .line 116
    return-void
.end method

.method public apply(Landroid/widget/ImageButton;ZZ)V
    .locals 1
    .param p1, "imageButton"    # Landroid/widget/ImageButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focused"    # Z
    .param p3, "gamePadSelected"    # Z

    .prologue
    .line 119
    if-eqz p3, :cond_0

    .line 120
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0, p2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonDrawable(Landroid/widget/ImageView;IZ)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/ImageButton;Z)V

    goto :goto_0
.end method

.method public apply(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "layout"    # Landroid/widget/LinearLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintLayoutBackground(Landroid/view/ViewGroup;I)V

    .line 129
    return-void
.end method

.method public apply(Landroid/widget/NumberPicker;)V
    .locals 1
    .param p1, "picker"    # Landroid/widget/NumberPicker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 133
    return-void
.end method

.method public apply(Landroid/widget/RadioButton;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/RadioButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintRadioButtonWithStateList(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;)V

    .line 95
    return-void
.end method

.method public apply(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintTextView(Landroid/widget/TextView;I)V

    .line 103
    return-void
.end method

.method public apply(Lcom/parrot/freeflight/settings/widget/Slider;)V
    .locals 1
    .param p1, "view"    # Lcom/parrot/freeflight/settings/widget/Slider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mSliderColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintSliderWithStateList(Lcom/parrot/freeflight/settings/widget/Slider;Landroid/content/res/ColorStateList;)V

    .line 83
    return-void
.end method

.method public applyToBackground(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 75
    return-void
.end method

.method public applyToDrawable(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintImageViewDrawable(Landroid/widget/ImageView;I)V

    .line 79
    return-void
.end method

.method public applyWithStateList(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintTextView(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 99
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public getColorStateList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v1, 0x7f07050e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getProductDrawableIcon(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .locals 2
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;->$SwitchMap$com$parrot$arsdk$ardiscovery$ARDISCOVERY_PRODUCT_ENUM:[I

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    const v0, 0x7f0704fd

    :goto_0
    return v0

    .line 170
    :pswitch_0
    const v0, 0x7f0704fa

    goto :goto_0

    .line 172
    :pswitch_1
    const v0, 0x7f0704fe

    goto :goto_0

    .line 174
    :pswitch_2
    const v0, 0x7f0704ff

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getProductMainColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 158
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    return v0
.end method

.method public getProductTileColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 163
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    return v0
.end method

.method public setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V
    .locals 1
    .param p1, "onThemeChangedListener"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 150
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;->onThemeChanged()V

    .line 154
    :cond_0
    return-void
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method
