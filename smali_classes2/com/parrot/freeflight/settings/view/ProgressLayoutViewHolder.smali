.class public Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;
.super Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;
.source "ProgressLayoutViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M1:",
        "Lcom/parrot/freeflight/core/model/Model;",
        "M2:",
        "Lcom/parrot/freeflight/core/model/Model;",
        ">",
        "Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder",
        "<TM1;TM2;",
        "Lcom/parrot/freeflight/util/DoubleBoundedState;",
        "Lcom/parrot/freeflight/settings/model/BoundedStateSettingsEntry",
        "<TM1;TM2;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 14
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder<TM1;TM2;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/settings/view/AProgressLayoutViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    return-void
.end method
