.class public Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "BebopJoystickSettingsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DroneModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCenterRadioButton:Landroid/widget/RadioButton;

.field private final mCheckbox:Landroid/widget/CheckBox;

.field private final mImageView:Landroid/widget/ImageView;

.field private mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mLeftRadioButton:Landroid/widget/RadioButton;

.field private final mLinearLayoutCameraSettings:Landroid/widget/LinearLayout;

.field private final mRadioGroup:Landroid/widget/RadioGroup;

.field private final mRightRadioButton:Landroid/widget/RadioButton;

.field private final mSettingsNameTextView:Landroid/widget/TextView;

.field private final mTextViewGyroscopeDescription:Landroid/widget/TextView;

.field private final mTextViewLeftJogDescription:Landroid/widget/TextView;

.field private final mTextViewRightJogDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v5, 0x7f050046

    .line 45
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 46
    const v3, 0x7f0a04da

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 47
    const v3, 0x7f0a026a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mLinearLayoutCameraSettings:Landroid/widget/LinearLayout;

    .line 48
    const v3, 0x7f0a0482

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mTextViewLeftJogDescription:Landroid/widget/TextView;

    .line 49
    const v3, 0x7f0a0483

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mTextViewRightJogDescription:Landroid/widget/TextView;

    .line 50
    const v3, 0x7f0a0473

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mTextViewGyroscopeDescription:Landroid/widget/TextView;

    .line 51
    const v3, 0x7f0a0394

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 52
    const v3, 0x7f0a0393

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    .line 53
    const v3, 0x7f0a0397

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 54
    const v3, 0x7f0a03a0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 55
    const v3, 0x7f0a00d3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    .line 56
    const v3, 0x7f0a01f3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 58
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mLinearLayoutCameraSettings:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 62
    .local v2, "resources":Landroid/content/res/Resources;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 69
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f110583

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 70
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f110581

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 71
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f110582

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 72
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f07041d

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 74
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    new-instance v4, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    new-instance v4, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    new-instance v4, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder$4;-><init>(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonWithStateList(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 110
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 111
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 112
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 113
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 114
    return-void

    .line 66
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .restart local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private updateDescriptionsTextView(IIZ)V
    .locals 2
    .param p1, "firstDescription"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "secondDescription"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "isLeftHanded"    # Z

    .prologue
    .line 151
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mTextViewRightJogDescription:Landroid/widget/TextView;

    if-eqz p3, :cond_0

    move v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mTextViewLeftJogDescription:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .end local p2    # "secondDescription":I
    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 153
    return-void

    .restart local p2    # "secondDescription":I
    :cond_0
    move v0, p2

    .line 151
    goto :goto_0

    :cond_1
    move p2, p1

    .line 152
    goto :goto_1
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V
    .locals 6
    .param p1    # Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DroneModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "value":Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;, "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry<Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    const/16 v5, 0x8

    const v4, 0x7f110560

    .line 119
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/preference/JoystickState;

    iput-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    .line 120
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isLeftHanded()Z

    move-result v1

    .line 121
    .local v1, "isLeftHanded":Z
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getControllerType()I

    move-result v0

    .line 124
    .local v0, "controllerType":I
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 125
    packed-switch v0, :pswitch_data_0

    .line 142
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0397

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 143
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    const v2, 0x7f07028c

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    const v2, 0x7f11055f

    invoke-direct {p0, v4, v2, v1}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 145
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mTextViewGyroscopeDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_1
    return-void

    .line 127
    :pswitch_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0394

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 128
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const v2, 0x7f07028e

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    const v2, 0x7f110556

    invoke-direct {p0, v4, v2, v1}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 130
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mTextViewGyroscopeDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 128
    :cond_0
    const v2, 0x7f07028d

    goto :goto_2

    .line 134
    :pswitch_1
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0393

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 135
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const v2, 0x7f07028a

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    const v2, 0x7f110561

    invoke-direct {p0, v4, v2, v1}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->updateDescriptionsTextView(IIZ)V

    .line 137
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->mTextViewGyroscopeDescription:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 135
    :cond_1
    const v2, 0x7f070289

    goto :goto_3

    .line 143
    :cond_2
    const v2, 0x7f07028b

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    check-cast p1, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/BebopJoystickSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V

    return-void
.end method
