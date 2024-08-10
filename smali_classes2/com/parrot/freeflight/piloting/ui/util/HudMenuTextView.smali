.class public Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;
.super Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;
.source "HudMenuTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;
    }
.end annotation


# instance fields
.field private mUnitText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mValueTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->mMenuButton:Landroid/view/View;

    const v3, 0x7f0a04d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->mValueTextView:Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->mMenuButton:Landroid/view/View;

    const v3, 0x7f0a04d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, "unitTextView":Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 60
    sget-object v2, Lcom/parrot/freeflight/R$styleable;->HudMenuTextView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "customAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->mUnitText:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->mUnitText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .end local v0    # "customAttributes":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->mValueTextView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-static {p1, v2, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 68
    invoke-static {p1, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->mUnitText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addItem(ILjava/lang/String;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "valueText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->mItemList:Ljava/util/List;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;-><init>(Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;ILjava/lang/String;Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method protected getDefaultItemLayout()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f0c00af

    return v0
.end method

.method protected updateMenuButton(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;)V
    .locals 2
    .param p1, "item"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->mValueTextView:Landroid/widget/TextView;

    check-cast p1, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;

    .end local p1    # "item":Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
    invoke-static {p1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;->access$100(Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
