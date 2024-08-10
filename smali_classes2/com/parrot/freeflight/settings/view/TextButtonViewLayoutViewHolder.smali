.class public Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "TextButtonViewLayoutViewHolder.java"


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
        "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field private mEntry:Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry",
            "<TT;TU;>;"
        }
    .end annotation
.end field

.field private final mMainColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public final mSettingsNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final mValueButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final mValueTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWarnColor:I
    .annotation build Landroid/support/annotation/ColorInt;
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
    .line 35
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 36
    const v1, 0x7f0a0497

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f0a04d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    .line 38
    const v1, 0x7f0a00c5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mValueButton:Landroid/widget/Button;

    .line 39
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mValueButton:Landroid/widget/Button;

    new-instance v2, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v1, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder$2;-><init>(Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 54
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 55
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mValueButton:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 56
    const v1, 0x7f050138

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mMainColor:I

    .line 57
    const v1, 0x7f050055

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mWarnColor:I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mEntry:Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;

    return-object v0
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;, "Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry<TT;TU;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mEntry:Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;->shouldWarn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mWarnColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mValueButton:Landroid/widget/Button;

    iget-object v1, p1, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;->mButtonName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->mMainColor:I

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/TextButtonViewLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/TextButtonSettingsEntry;)V

    return-void
.end method
