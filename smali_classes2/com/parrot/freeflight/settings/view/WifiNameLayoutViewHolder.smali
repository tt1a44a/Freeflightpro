.class public Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "WifiNameLayoutViewHolder.java"


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
        "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field private final mButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDescriptionTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mIsWpa2SettingVisible:Z

.field private final mSettingsNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWifiNameEditText:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWifiNameSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field private final mWifiPassphraseEditText:Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWpa2AreaLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWpa2InfoTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWpa2TextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mIsWpa2SettingVisible:Z

    .line 47
    const v1, 0x7f0a02db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWpa2AreaLayout:Landroid/widget/LinearLayout;

    .line 48
    const v1, 0x7f0a04da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 49
    const v1, 0x7f0a04e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWpa2TextView:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f0a04d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWpa2InfoTextView:Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0a0449

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiNameEditText:Landroid/widget/EditText;

    .line 52
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiNameEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 62
    const v1, 0x7f0a049e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiPassphraseEditText:Landroid/widget/EditText;

    .line 63
    const v1, 0x7f0a04d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0a00db

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mButton:Landroid/widget/Button;

    .line 66
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiPassphraseEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/parrot/freeflight/wifi/Wpa2PasswordChecker;->getInputFilter()[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiPassphraseEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v1, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder$4;-><init>(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiNameEditText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiPassphraseEditText:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWpa2TextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiNameSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiPassphraseEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mIsWpa2SettingVisible:Z

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->updateWpa2SettingsVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method private updateSettingAvailability(Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;)V
    .locals 3
    .param p1, "wifiState"    # Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder<TT;TU;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->isSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiSecurity()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->isSettingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiPassphraseEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->isSettingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 126
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWpa2SettingsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 129
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder<TT;TU;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWpa2AreaLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iput-boolean p1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mIsWpa2SettingVisible:Z

    .line 131
    return-void

    .line 129
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;)V
    .locals 6
    .param p1    # Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry<TT;TU;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;

    .line 110
    .local v0, "wifiState":Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiNameSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    .line 111
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;->getCheckboxName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getTextLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiSecurity()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    iget-object v4, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiSecurity()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 115
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiSecurity()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->updateWpa2SettingsVisibility(Z)V

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWpa2InfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiSecurity()I

    move-result v4

    if-ne v4, v2, :cond_0

    const/16 v3, 0x8

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->mWifiPassphraseEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;->getWifiWpa2Password()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->updateSettingAvailability(Lcom/parrot/freeflight/piloting/ui/util/WifiNameState;)V

    .line 120
    return-void

    :cond_1
    move v1, v3

    .line 113
    goto :goto_0

    :cond_2
    move v1, v3

    .line 114
    goto :goto_1

    :cond_3
    move v1, v3

    .line 115
    goto :goto_2
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiNameLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/WifiNameSettingsEntry;)V

    return-void
.end method
