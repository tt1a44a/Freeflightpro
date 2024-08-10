.class public Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "WifiBandLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$LastBandSelected;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "U:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
        "<",
        "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# static fields
.field public static final FIRST:I = 0x0

.field public static final FOURTH:I = 0x3

.field public static final SECOND:I = 0x1

.field public static final THIRD:I = 0x2

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private m5GHzBandAllowed:Z

.field private final mFirstRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFourthRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastSelectedRadioButton:I

.field private final mRadioGroup:Landroid/widget/RadioGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSecondRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSettingsNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mThirdRadioButton:Landroid/widget/RadioButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mWifiBandSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field private final mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;
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
    .line 60
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->m5GHzBandAllowed:Z

    .line 53
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mLastSelectedRadioButton:I

    .line 61
    const v1, 0x7f0a039a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFirstRadioButton:Landroid/widget/RadioButton;

    .line 62
    const v1, 0x7f0a03a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mSecondRadioButton:Landroid/widget/RadioButton;

    .line 63
    const v1, 0x7f0a03a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mThirdRadioButton:Landroid/widget/RadioButton;

    .line 64
    const v1, 0x7f0a039b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFourthRadioButton:Landroid/widget/RadioButton;

    .line 65
    const v1, 0x7f0a04da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0a0535

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    .line 67
    const v1, 0x7f0a03a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 69
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFirstRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mSecondRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mThirdRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFourthRadioButton:Landroid/widget/RadioButton;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$4;-><init>(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder$5;-><init>(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setOnChannelClickListener(Lcom/parrot/freeflight/settings/widget/WifiChannelsView$OnChannelClickListener;)V

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFirstRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mSecondRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 129
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mThirdRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 130
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFourthRadioButton:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFirstRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    .prologue
    .line 25
    iget v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mLastSelectedRadioButton:I

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mLastSelectedRadioButton:I

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiBandSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->updateSettingAvailability(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mSecondRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mThirdRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFourthRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;)Lcom/parrot/freeflight/settings/widget/WifiChannelsView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    return-object v0
.end method

.method private updateSettingAvailability(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder<TT;TU;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFirstRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 173
    iget-object v3, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mSecondRadioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->m5GHzBandAllowed:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mThirdRadioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->m5GHzBandAllowed:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFourthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 176
    return-void

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0

    :cond_1
    move v1, v2

    .line 174
    goto :goto_1
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;)V
    .locals 8
    .param p1    # Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry<TT;TU;>;"
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;

    .line 138
    .local v1, "wifiState":Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiBandSettingsEntry:Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    .line 139
    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->is5GHzBandAllowed()Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->m5GHzBandAllowed:Z

    .line 140
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFirstRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->getFirstRadioButtonName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mSecondRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->getSecondRadioButtonName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mThirdRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->getThirdRadioButtonName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mFourthRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;->getFourthRadioButtonName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiType()I

    move-result v2

    if-nez v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0a039a

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 147
    iput v4, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mLastSelectedRadioButton:I

    .line 148
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setEnabled(Z)V

    .line 162
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiScanList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setWifiData(Ljava/util/List;)V

    .line 163
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiBandAuthList()Ljava/util/List;

    move-result-object v3

    iget-boolean v4, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->m5GHzBandAllowed:Z

    invoke-virtual {v2, v3, v4}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setChannelsTable(Ljava/util/List;Z)V

    .line 164
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiChannelInfo()Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;

    move-result-object v0

    .line 165
    .local v0, "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    if-eqz v0, :cond_1

    .line 166
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setCurrentChannel(Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;Ljava/lang/String;)V

    .line 168
    :cond_1
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->isSettingEnabled()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->updateSettingAvailability(Z)V

    .line 169
    return-void

    .line 149
    .end local v0    # "info":Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;
    :cond_2
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiType()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 150
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0a03a3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 151
    iput v5, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mLastSelectedRadioButton:I

    .line 152
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setEnabled(Z)V

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiType()I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 154
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0a03a4

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 155
    iput v6, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mLastSelectedRadioButton:I

    .line 156
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    invoke-virtual {v2, v4}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setEnabled(Z)V

    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/WifiBandState;->getWifiType()I

    move-result v2

    if-ne v2, v7, :cond_0

    .line 158
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0a039b

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 159
    iput v7, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mLastSelectedRadioButton:I

    .line 160
    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->mWifiChannelView:Lcom/parrot/freeflight/settings/widget/WifiChannelsView;

    invoke-virtual {v2, v5}, Lcom/parrot/freeflight/settings/widget/WifiChannelsView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiBandLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/WifiBandSettingsEntry;)V

    return-void
.end method
