.class public Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "FixedWingJoystickSettingsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final mCenterRadioButton:Landroid/widget/RadioButton;

.field public final mCheckbox:Landroid/widget/CheckBox;

.field private mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final mLeftRadioButton:Landroid/widget/RadioButton;

.field public final mRadioGroup:Landroid/widget/RadioGroup;

.field public final mRightRadioButton:Landroid/widget/RadioButton;

.field public final mSettingsNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const v5, 0x7f050046

    .line 37
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    const v3, 0x7f0a04da

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 39
    const v3, 0x7f0a0394

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 40
    const v3, 0x7f0a0393

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    .line 41
    const v3, 0x7f0a0397

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 42
    const v3, 0x7f0a03a0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 43
    const v3, 0x7f0a00d3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    .local v2, "resources":Landroid/content/res/Resources;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 54
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f110583

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 55
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f110581

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 56
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f110582

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 57
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    const v4, 0x7f07041d

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 59
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    new-instance v4, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    new-instance v4, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$2;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    new-instance v4, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$3;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder$4;-><init>(Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-static {v3, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonWithStateList(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 95
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 96
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 97
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 98
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-static {v1, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 99
    return-void

    .line 51
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .restart local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;)Lcom/parrot/freeflight/piloting/preference/JoystickState;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    return-object v0
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V
    .locals 3
    .param p1    # Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "value":Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;, "Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry<Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/preference/JoystickState;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    .line 105
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->isLeftHanded()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mJoystickState:Lcom/parrot/freeflight/piloting/preference/JoystickState;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/preference/JoystickState;->getControllerType()I

    move-result v0

    .line 108
    .local v0, "controllerType":I
    packed-switch v0, :pswitch_data_0

    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0a0397

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 122
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0a0394

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0a0393

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 108
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
    .line 24
    check-cast p1, Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/FixedWingJoystickSettingsViewHolder;->update(Lcom/parrot/freeflight/settings/model/JoystickSettingsEntry;)V

    return-void
.end method
