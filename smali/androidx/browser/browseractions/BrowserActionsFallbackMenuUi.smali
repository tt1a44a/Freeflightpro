.class Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
.super Ljava/lang/Object;
.source "BrowserActionsFallbackMenuUi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserActionskMenuUi"


# instance fields
.field private mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

.field private final mContext:Landroid/content/Context;

.field private final mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mUri:Landroid/net/Uri;

    .line 70
    iput-object p3, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuItems:Ljava/util/List;

    .line 71
    return-void
.end method

.method static synthetic access$000(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;)Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;
    .locals 1
    .param p0, "x0"    # Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    .prologue
    .line 43
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

    return-object v0
.end method

.method private initMenuView(Landroid/view/View;)Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    sget v4, Landroid/support/customtabs/R$id;->browser_actions_menu_view:I

    .line 101
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;

    .line 103
    .local v2, "menuView":Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;
    sget v4, Landroid/support/customtabs/R$id;->browser_actions_header_text:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    .local v3, "urlTextView":Landroid/widget/TextView;
    iget-object v4, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    new-instance v4, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;

    invoke-direct {v4, p0, v3}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$2;-><init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget v4, Landroid/support/customtabs/R$id;->browser_actions_menu_items:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 119
    .local v1, "menuListView":Landroid/widget/ListView;
    new-instance v0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;

    iget-object v4, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuItems:Ljava/util/List;

    iget-object v5, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v5}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 121
    .local v0, "adapter":Landroidx/browser/browseractions/BrowserActionsFallbackMenuAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    return-object v2
.end method


# virtual methods
.method public displayMenu()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/customtabs/R$layout;->browser_actions_context_menu_page:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    iget-object v2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->initMenuView(Landroid/view/View;)Landroidx/browser/browseractions/BrowserActionsFallbackMenuView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    .line 87
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    invoke-virtual {v1, v0}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->setContentView(Landroid/view/View;)V

    .line 88
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    new-instance v2, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;

    invoke-direct {v2, p0, v0}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$1;-><init>(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 96
    :cond_0
    iget-object v1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    invoke-virtual {v1}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->show()V

    .line 97
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/browser/browseractions/BrowserActionItem;

    invoke-virtual {v2}, Landroidx/browser/browseractions/BrowserActionItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    .line 131
    .local v0, "action":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 132
    iget-object v2, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mBrowserActionsDialog:Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;

    invoke-virtual {v2}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuDialog;->dismiss()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "BrowserActionskMenuUi"

    const-string v3, "Failed to send custom item action"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setMenuUiListener(Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;)V
    .locals 0
    .param p1, "menuUiListener"    # Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->mMenuUiListener:Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi$BrowserActionsFallMenuUiListener;

    .line 78
    return-void
.end method
