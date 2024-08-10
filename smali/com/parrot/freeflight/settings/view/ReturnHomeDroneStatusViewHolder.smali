.class public Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "ReturnHomeDroneStatusViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder$DirectionSelected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry",
        "<",
        "Lcom/parrot/freeflight/core/model/DroneModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final CENTER:I = 0x1

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final UNKNOWN:I = -0x1


# instance fields
.field public final mCenterRadioButton:Landroid/widget/RadioButton;

.field private mLastSelectedRadioButton:I

.field public final mLeftRadioButton:Landroid/widget/RadioButton;

.field public final mRadioGroup:Landroid/widget/RadioGroup;

.field private mReturnHomeDroneStatusSettingsEntry:Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DroneModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mRightRadioButton:Landroid/widget/RadioButton;

.field public final mSettingsNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mLastSelectedRadioButton:I

    .line 45
    const v1, 0x7f0a04da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0a0394

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    .line 47
    const v1, 0x7f0a0393

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    .line 48
    const v1, 0x7f0a0397

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    .line 49
    const v1, 0x7f0a03a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 51
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 52
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 53
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 58
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 59
    return-void
.end method

.method private setEnableRadioButtons(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 90
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;)V
    .locals 6
    .param p1    # Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry",
            "<",
            "Lcom/parrot/freeflight/core/model/DroneModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "value":Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;, "Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry<Lcom/parrot/freeflight/core/model/DroneModel;Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;>;"
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mReturnHomeDroneStatusSettingsEntry:Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;

    .line 65
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;->getValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, "returnHomeDroneStatus":I
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mReturnHomeDroneStatusSettingsEntry:Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;

    invoke-virtual {v4}, Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f11058e

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 70
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mCenterRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f11058d

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 71
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mRightRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f11058c

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(I)V

    .line 73
    if-nez v0, :cond_1

    .line 74
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0a0394

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 75
    iput v2, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mLastSelectedRadioButton:I

    .line 83
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    :goto_1
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->setEnableRadioButtons(Z)V

    .line 84
    return-void

    .line 76
    :cond_1
    if-ne v0, v1, :cond_2

    .line 77
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0a0393

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 78
    iput v1, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mLastSelectedRadioButton:I

    goto :goto_0

    .line 79
    :cond_2
    if-ne v0, v5, :cond_0

    .line 80
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v4, 0x7f0a0397

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->check(I)V

    .line 81
    iput v5, p0, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->mLastSelectedRadioButton:I

    goto :goto_0

    :cond_3
    move v1, v2

    .line 83
    goto :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    check-cast p1, Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/ReturnHomeDroneStatusViewHolder;->update(Lcom/parrot/freeflight/settings/model/ReturnHomeDroneStatusSettingsEntry;)V

    return-void
.end method
