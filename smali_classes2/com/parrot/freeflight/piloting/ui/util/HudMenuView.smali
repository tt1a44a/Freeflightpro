.class public abstract Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;
.super Landroid/widget/LinearLayout;
.source "HudMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;,
        Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;,
        Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;
    }
.end annotation


# static fields
.field public static final HIDDEN:I = -0x1

.field public static final NOT_INITIALIZED:I = -0x2

.field private static final SINGLE_MENU_ITEM_APPARITION_TIME:I = 0x19


# instance fields
.field protected mItemLayout:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field protected final mItemList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mMenuButton:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mMenuLayout:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mMenuOpen:Z

.field protected mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mOnItemClickListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mValue:I

    .line 64
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->setOrientation(I)V

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "menuButtonSelected":Z
    if-eqz p2, :cond_0

    .line 69
    sget-object v2, Lcom/parrot/freeflight/R$styleable;->HudMenuView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, "customAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mItemLayout:I

    .line 71
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    .end local v0    # "customAttributes":Landroid/content/res/TypedArray;
    :cond_0
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mItemLayout:I

    if-nez v2, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->getDefaultItemLayout()I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mItemLayout:I

    .line 79
    :cond_1
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mItemLayout:I

    invoke-static {p1, v2, p0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuButton:Landroid/view/View;

    .line 81
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 83
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    .line 84
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->addView(Landroid/view/View;)V

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mItemList:Ljava/util/List;

    .line 91
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuButton:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->initMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->scaleDownAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private expandMenu()V
    .locals 6

    .prologue
    .line 181
    const/4 v1, 0x1

    .line 182
    .local v1, "factor":I
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;

    .line 183
    .local v2, "item":Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
    iget-object v0, v2, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;->mButton:Landroid/view/View;

    .line 184
    .local v0, "button":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 185
    iget v4, v2, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;->mValue:I

    iget v5, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mValue:I

    if-ne v4, v5, :cond_1

    .line 186
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_1
    mul-int/lit8 v4, v1, 0x19

    invoke-direct {p0, v0, v4}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->scaleDownAnimation(Landroid/view/View;I)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "button":Landroid/view/View;
    .end local v2    # "item":Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
    :cond_2
    return-void
.end method

.method private initMenu()V
    .locals 6

    .prologue
    .line 157
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;

    .line 160
    .local v2, "item":Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mItemLayout:I

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    invoke-static {v1, v4, v5}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 161
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "button":Landroid/view/View;
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;

    invoke-direct {v4, p0, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v0, v2, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;->mButton:Landroid/view/View;

    .line 174
    invoke-virtual {v2, v1}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 177
    .end local v0    # "button":Landroid/view/View;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "item":Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->expandMenu()V

    .line 178
    return-void
.end method

.method private scaleDownAnimation(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "offsetStart"    # I

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 198
    .local v0, "itemAnimation":Landroid/view/animation/Animation;
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    .end local v0    # "itemAnimation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method


# virtual methods
.method public closeMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuOpen:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuOpen:Z

    .line 150
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    invoke-interface {v0, p0, v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;->onMenuStateChanged(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;Z)V

    .line 154
    :cond_0
    return-void
.end method

.method protected abstract getDefaultItemLayout()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public getMenuButtonVisibility()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    if-nez p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->closeMenu()V

    .line 144
    :cond_0
    return-void
.end method

.method public setMenuStateListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;)V
    .locals 0
    .param p1, "menuStateListener"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 134
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuStateListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuStateListener;

    .line 135
    return-void
.end method

.method public setOnItemClickListener(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;)V
    .locals 0
    .param p1, "onItemClickListener"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mOnItemClickListener:Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$OnItemClickListener;

    .line 115
    return-void
.end method

.method public updateMenuButton(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 118
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mValue:I

    if-eq v1, p1, :cond_0

    .line 119
    iput p1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mValue:I

    .line 120
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mMenuButton:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;

    .line 124
    .local v0, "item":Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
    iget v2, v0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;->mValue:I

    if-ne v2, p1, :cond_2

    .line 125
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView;->updateMenuButton(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;)V

    goto :goto_0
.end method

.method protected abstract updateMenuButton(Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;)V
    .param p1    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
