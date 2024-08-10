.class public Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
.source "TextViewLayoutViewHolder.java"


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
        "Lcom/parrot/freeflight/settings/model/TextSettingsEntry",
        "<TT;TU;>;>;"
    }
.end annotation


# instance fields
.field public final mSettingsNameTextView:Landroid/widget/TextView;

.field public final mValueTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder<TT;TU;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/SettingsViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    const v1, 0x7f0a04da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f0a04d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    .line 22
    new-instance v1, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder$1;-><init>(Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 31
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/settings/model/TextSettingsEntry;)V
    .locals 2
    .param p1    # Lcom/parrot/freeflight/settings/model/TextSettingsEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parrot/freeflight/settings/model/TextSettingsEntry",
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder<TT;TU;>;"
    .local p1, "value":Lcom/parrot/freeflight/settings/model/TextSettingsEntry;, "Lcom/parrot/freeflight/settings/model/TextSettingsEntry<TT;TU;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;->mSettingsNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/TextSettingsEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p0, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;->mValueTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/settings/model/TextSettingsEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    .local p0, "this":Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder<TT;TU;>;"
    check-cast p1, Lcom/parrot/freeflight/settings/model/TextSettingsEntry;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;->update(Lcom/parrot/freeflight/settings/model/TextSettingsEntry;)V

    return-void
.end method
