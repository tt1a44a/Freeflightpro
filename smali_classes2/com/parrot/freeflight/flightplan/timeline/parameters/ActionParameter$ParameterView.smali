.class public abstract Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;
.super Landroid/widget/TableRow;
.source "ActionParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ParameterView"
.end annotation


# instance fields
.field protected final mDefaultElementHeight:I

.field protected final mTextSize:I

.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>.ParameterView;"
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->this$0:Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;

    .line 76
    invoke-direct {p0, p2}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06032e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->mDefaultElementHeight:I

    .line 78
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->mTextSize:I

    .line 79
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "titleLabel":Landroid/widget/TextView;
    invoke-static {p2, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 81
    invoke-static {p1}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;->access$000(Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->getDefaultTitleLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->addView(Landroid/view/View;)V

    .line 85
    return-void
.end method


# virtual methods
.method public abstract applyTheme(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
    .param p1    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected getDefaultTitleLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>.ParameterView;"
    const/16 v3, 0xa

    .line 89
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->mDefaultElementHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 90
    .local v0, "param":Landroid/widget/TableRow$LayoutParams;
    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 91
    return-object v0
.end method

.method protected getDefaultValueLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;, "Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter<TV;>.ParameterView;"
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 96
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x2

    iget v2, p0, Lcom/parrot/freeflight/flightplan/timeline/parameters/ActionParameter$ParameterView;->mDefaultElementHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 97
    .local v0, "param":Landroid/widget/TableRow$LayoutParams;
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 98
    return-object v0
.end method

.method public abstract refresh()V
.end method

.method public abstract updateValue()V
.end method
