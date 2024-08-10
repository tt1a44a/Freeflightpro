.class public abstract Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
.super Ljava/lang/Object;
.source "HudMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "MenuItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mButton:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected final mValue:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 54
    .local p0, "this":Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;, "Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;->mValue:I

    .line 56
    return-void
.end method


# virtual methods
.method protected abstract init(Landroid/content/Context;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
