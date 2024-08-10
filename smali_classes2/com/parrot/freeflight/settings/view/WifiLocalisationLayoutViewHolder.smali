.class public Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "WifiLocalisationLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field private final mCheckbox:Landroid/widget/CheckBox;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/piloting/widget/ObjectPicker",
            "<",
            "Lcom/parrot/freeflight/piloting/model/WifiCountry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWifiCountryTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWifiLocalisationSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder<TT;TU;>;"
    const/4 v4, 0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    const v2, 0x7f0a04da

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 42
    const v2, 0x7f0a0449

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiCountryTextView:Landroid/widget/TextView;

    .line 43
    const v2, 0x7f0a00da

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    .line 44
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 59
    const v2, 0x7f0a0356

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    iput-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    .line 60
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    new-instance v3, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setOnKeyDispatchedListener(Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;)V

    .line 66
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiCountryTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$4;-><init>(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    new-instance v3, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder$5;-><init>(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiCountryTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 92
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setFocusable(Z)V

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    const v3, 0x7f050138

    invoke-static {v0, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->applyTheme(I)V

    .line 95
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 96
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiCountryTextView:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 97
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 98
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    const-class v2, Lcom/parrot/freeflight/piloting/model/WifiCountry;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/model/WifiCountry;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->populatePicker(Ljava/util/List;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiLocalisationSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->handleOnKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Lcom/parrot/freeflight/piloting/widget/ObjectPicker;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiCountryTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleOnKey(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder<TT;TU;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 137
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 138
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 139
    sparse-switch v0, :sswitch_data_0

    :cond_0
    move v2, v1

    .line 166
    :cond_1
    :goto_0
    return v2

    .line 142
    :sswitch_0
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setVisibility(I)V

    .line 144
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiCountryTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 145
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiLocalisationSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;

    if-eqz v3, :cond_2

    .line 146
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiLocalisationSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->getObject()Lcom/parrot/freeflight/piloting/widget/Namable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v4}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->isSelected()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v3, v1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setSelected(Z)V

    goto :goto_0

    .line 152
    :sswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->increment()V

    goto :goto_0

    .line 157
    :sswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->decrement()V

    goto :goto_0

    .line 163
    :sswitch_3
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->isSelected()Z

    move-result v2

    goto :goto_0

    .line 139
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_1
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_0
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateSettingAvailability(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 131
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiCountryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCountryPicker:Lcom/parrot/freeflight/piloting/widget/ObjectPicker;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setEnabled(Z)V

    .line 134
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;)V
    .locals 7
    .param p1    # Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry<TT;TU;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiLocalisationSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;

    .line 111
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;

    .line 112
    .local v3, "wifiLocalisationState":Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->isInOutdoorMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->getWifiCountry()Lcom/parrot/freeflight/piloting/model/WifiCountry;

    move-result-object v2

    .line 117
    .local v2, "wifiCountry":Lcom/parrot/freeflight/piloting/model/WifiCountry;
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiCountryTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->isInAutoCountryMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/WifiCountry;->getName()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f1100c9

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "countryName":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mWifiCountryTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;->getCheckboxName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getTextLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->mCheckbox:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 127
    invoke-virtual {v3}, Lcom/parrot/freeflight/piloting/ui/util/WifiLocalisationState;->isSettingEnabled()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->updateSettingAvailability(Z)V

    .line 128
    return-void

    .line 121
    .end local v0    # "countryName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/model/WifiCountry;->getName()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "countryName":Ljava/lang/String;
    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiLocalisationLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/WifiLocalisationSettingsEntry;)V

    return-void
.end method
