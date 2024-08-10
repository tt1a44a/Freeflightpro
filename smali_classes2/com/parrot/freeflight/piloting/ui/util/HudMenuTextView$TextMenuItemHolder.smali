.class public Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;
.super Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;
.source "HudMenuTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextMenuItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mValueText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;
    .param p2, "value"    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "valueText"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    .line 26
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuView$MenuItemHolder;-><init>(I)V

    .line 27
    iput-object p3, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;->mValueText:Ljava/lang/String;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;ILjava/lang/String;Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$1;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;-><init>(Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;->mValueText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;->mButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;->mButton:Landroid/view/View;

    const v3, 0x7f0a04d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    .local v1, "valueTextView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;->mButton:Landroid/view/View;

    const v3, 0x7f0a04d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, "unitTextView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;->mValueText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView$TextMenuItemHolder;->this$0:Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;->access$000(Lcom/parrot/freeflight/piloting/ui/util/HudMenuTextView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const/4 v2, 0x3

    invoke-static {p1, v1, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 40
    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 42
    .end local v0    # "unitTextView":Landroid/widget/TextView;
    .end local v1    # "valueTextView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
