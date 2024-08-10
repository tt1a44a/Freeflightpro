.class public Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "WifiChannelLayoutViewHolder.java"


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
        "Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/parrot/freeflight/settings/widget/WifiChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBarDisplayer:Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mEntry:Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field private final mSettingsNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mValueSpinner:Lcom/parrot/freeflight/view/CustomSpinner;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    const v1, 0x7f0a0497

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 38
    const v1, 0x7f0a0402

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/view/CustomSpinner;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mValueSpinner:Lcom/parrot/freeflight/view/CustomSpinner;

    .line 39
    new-instance v1, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, p0, v2, v3}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mValueSpinner:Lcom/parrot/freeflight/view/CustomSpinner;

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/view/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mValueSpinner:Lcom/parrot/freeflight/view/CustomSpinner;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/view/CustomSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 81
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mValueSpinner:Lcom/parrot/freeflight/view/CustomSpinner;

    new-instance v2, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$3;-><init>(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/view/CustomSpinner;->setSpinnerEventsListener(Lcom/parrot/freeflight/view/CustomSpinner$OnSpinnerOpenStateChangedListener;)V

    .line 92
    new-instance v1, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$4;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder$4;-><init>(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mValueSpinner:Lcom/parrot/freeflight/view/CustomSpinner;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mEntry:Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->findBarDisplayer(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;)Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mBarDisplayer:Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;

    return-object v0
.end method

.method private findBarDisplayer(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mBarDisplayer:Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;

    if-nez v0, :cond_0

    .line 105
    instance-of v0, p1, Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;

    if-eqz v0, :cond_1

    .line 106
    check-cast p1, Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;

    .end local p1    # "view":Landroid/view/View;
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mBarDisplayer:Lcom/parrot/freeflight/piloting/ui/settings/IBarDisplayer;

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->findBarDisplayer(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;, "Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry<TT;TU;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mEntry:Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 118
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->getWifiChannelList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 120
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->mValueSpinner:Lcom/parrot/freeflight/view/CustomSpinner;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/WifiChannelState;->getSelectedIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/view/CustomSpinner;->setSelection(I)V

    .line 121
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    .local p0, "this":Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/WifiChannelLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/WifiChannelSettingsEntry;)V

    return-void
.end method
