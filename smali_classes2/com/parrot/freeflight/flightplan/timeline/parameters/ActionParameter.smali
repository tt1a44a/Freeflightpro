.class public abstract Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
.super Ljava/lang/Object;
.source "ActionParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_LABEL_MARGIN_LEFT:I = 0x14

.field protected static final DEFAULT_MARGIN_BOTTOM:I = 0xa

.field protected static final DEFAULT_MARGIN_TOP:I = 0xa


# instance fields
.field private final mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter",
            "<TV;>.ParameterView;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mValue:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract createTableRow()Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter",
            "<TV;>.ParameterView;"
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getView(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Landroid/widget/TableRow;
    .locals 2
    .param p1, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->createTableRow()Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->refresh()V

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->applyTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    return-object v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->refresh()V

    .line 62
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mValue:Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->refresh()V

    .line 46
    return-void
.end method

.method public updateValue()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->mView:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->updateValue()V

    .line 66
    :cond_0
    return-void
.end method
