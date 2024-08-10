.class public Landroidx/browser/browseractions/BrowserActionsIntent;
.super Ljava/lang/Object;
.source "BrowserActionsIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/browseractions/BrowserActionsIntent$Builder;,
        Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;,
        Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsItemId;,
        Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsUrlType;
    }
.end annotation


# static fields
.field public static final ACTION_BROWSER_ACTIONS_OPEN:Ljava/lang/String; = "androidx.browser.browseractions.browser_action_open"

.field public static final EXTRA_APP_ID:Ljava/lang/String; = "androidx.browser.browseractions.APP_ID"

.field public static final EXTRA_MENU_ITEMS:Ljava/lang/String; = "androidx.browser.browseractions.extra.MENU_ITEMS"

.field public static final EXTRA_SELECTED_ACTION_PENDING_INTENT:Ljava/lang/String; = "androidx.browser.browseractions.extra.SELECTED_ACTION_PENDING_INTENT"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "androidx.browser.browseractions.extra.TYPE"

.field public static final ITEM_COPY:I = 0x3

.field public static final ITEM_DOWNLOAD:I = 0x2

.field public static final ITEM_INVALID_ITEM:I = -0x1

.field public static final ITEM_OPEN_IN_INCOGNITO:I = 0x1

.field public static final ITEM_OPEN_IN_NEW_TAB:I = 0x0

.field public static final ITEM_SHARE:I = 0x4

.field public static final KEY_ACTION:Ljava/lang/String; = "androidx.browser.browseractions.ACTION"

.field public static final KEY_ICON_ID:Ljava/lang/String; = "androidx.browser.browseractions.ICON_ID"

.field public static final KEY_TITLE:Ljava/lang/String; = "androidx.browser.browseractions.TITLE"

.field public static final MAX_CUSTOM_ITEMS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BrowserActions"

.field private static final TEST_URL:Ljava/lang/String; = "https://www.example.com"

.field public static final URL_TYPE_AUDIO:I = 0x3

.field public static final URL_TYPE_FILE:I = 0x4

.field public static final URL_TYPE_IMAGE:I = 0x1

.field public static final URL_TYPE_NONE:I = 0x0

.field public static final URL_TYPE_PLUGIN:I = 0x5

.field public static final URL_TYPE_VIDEO:I = 0x2

.field private static sDialogListenter:Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;


# instance fields
.field private final mIntent:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Landroidx/browser/browseractions/BrowserActionsIntent;->mIntent:Landroid/content/Intent;

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Landroidx/browser/browseractions/BrowserActionsIntent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Intent;
    .param p2, "x1"    # Landroidx/browser/browseractions/BrowserActionsIntent$1;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroidx/browser/browseractions/BrowserActionsIntent;-><init>(Landroid/content/Intent;)V

    return-void
.end method

.method private static getBrowserActionsIntentHandlers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v2, "androidx.browser.browseractions.browser_action_open"

    const-string v3, "https://www.example.com"

    .line 351
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 353
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x20000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static getCreatorPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 419
    const-string v1, "androidx.browser.browseractions.APP_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 420
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_1

    .line 421
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    .line 427
    :goto_0
    return-object v1

    .line 424
    :cond_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 427
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static launchIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 312
    invoke-static {p0}, Landroidx/browser/browseractions/BrowserActionsIntent;->getBrowserActionsIntentHandlers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 313
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0, p1, v0}, Landroidx/browser/browseractions/BrowserActionsIntent;->launchIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 314
    return-void
.end method

.method static launchIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, "handlers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 321
    :cond_0
    invoke-static {p0, p1}, Landroidx/browser/browseractions/BrowserActionsIntent;->openFallbackBrowserActionsMenu(Landroid/content/Context;Landroid/content/Intent;)V

    .line 341
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 324
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    :cond_2
    :goto_1
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Landroid/support/v4/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 326
    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "https://www.example.com"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 327
    .local v4, "viewIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 328
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/high16 v5, 0x10000

    .line 329
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 330
    .local v0, "defaultHandler":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    .line 331
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 332
    .local v1, "defaultPackageName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 333
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 334
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 332
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static openBrowserAction(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 278
    new-instance v1, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    invoke-direct {v1, p0, p1}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->build()Landroidx/browser/browseractions/BrowserActionsIntent;

    move-result-object v0

    .line 279
    .local v0, "intent":Landroidx/browser/browseractions/BrowserActionsIntent;
    invoke-virtual {v0}, Landroidx/browser/browseractions/BrowserActionsIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/browser/browseractions/BrowserActionsIntent;->launchIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method public static openBrowserAction(Landroid/content/Context;Landroid/net/Uri;ILjava/util/ArrayList;Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/browser/browseractions/BrowserActionItem;>;"
    new-instance v1, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    invoke-direct {v1, p0, p1}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 295
    invoke-virtual {v1, p2}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->setUrlType(I)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, p3}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->setCustomItems(Ljava/util/ArrayList;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-result-object v1

    .line 297
    invoke-virtual {v1, p4}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->setOnItemSelectedAction(Landroid/app/PendingIntent;)Landroidx/browser/browseractions/BrowserActionsIntent$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Landroidx/browser/browseractions/BrowserActionsIntent$Builder;->build()Landroidx/browser/browseractions/BrowserActionsIntent;

    move-result-object v0

    .line 299
    .local v0, "intent":Landroidx/browser/browseractions/BrowserActionsIntent;
    invoke-virtual {v0}, Landroidx/browser/browseractions/BrowserActionsIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/browser/browseractions/BrowserActionsIntent;->launchIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 300
    return-void
.end method

.method private static openFallbackBrowserActionsMenu(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 357
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 358
    .local v3, "uri":Landroid/net/Uri;
    const-string v4, "androidx.browser.browseractions.extra.TYPE"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 359
    .local v2, "type":I
    const-string v4, "androidx.browser.browseractions.extra.MENU_ITEMS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 360
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/browser/browseractions/BrowserActionsIntent;->parseBrowserActionItems(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    .line 361
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    :goto_0
    invoke-static {p0, v3, v2, v1}, Landroidx/browser/browseractions/BrowserActionsIntent;->openFallbackBrowserActionsMenu(Landroid/content/Context;Landroid/net/Uri;ILjava/util/List;)V

    .line 362
    return-void

    .line 360
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static openFallbackBrowserActionsMenu(Landroid/content/Context;Landroid/net/Uri;ILjava/util/List;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p3, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    new-instance v0, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;

    invoke-direct {v0, p0, p1, p3}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/List;)V

    .line 382
    .local v0, "menuUi":Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;
    invoke-virtual {v0}, Landroidx/browser/browseractions/BrowserActionsFallbackMenuUi;->displayMenu()V

    .line 383
    sget-object v1, Landroidx/browser/browseractions/BrowserActionsIntent;->sDialogListenter:Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;

    if-eqz v1, :cond_0

    .line 384
    sget-object v1, Landroidx/browser/browseractions/BrowserActionsIntent;->sDialogListenter:Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;

    invoke-interface {v1}, Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;->onDialogShown()V

    .line 386
    :cond_0
    return-void
.end method

.method public static parseBrowserActionItems(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroidx/browser/browseractions/BrowserActionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v5, "mActions":Ljava/util/List;, "Ljava/util/List<Landroidx/browser/browseractions/BrowserActionItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 396
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 397
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "androidx.browser.browseractions.TITLE"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 398
    .local v6, "title":Ljava/lang/String;
    const-string v7, "androidx.browser.browseractions.ACTION"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 400
    .local v0, "action":Landroid/app/PendingIntent;
    const-string v7, "androidx.browser.browseractions.ICON_ID"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 401
    .local v3, "iconId":I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v0, :cond_1

    .line 402
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Custom item should contain a non-empty title and non-null intent."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 405
    :cond_1
    new-instance v4, Landroidx/browser/browseractions/BrowserActionItem;

    invoke-direct {v4, v6, v0, v3}, Landroidx/browser/browseractions/BrowserActionItem;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 406
    .local v4, "item":Landroidx/browser/browseractions/BrowserActionItem;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v0    # "action":Landroid/app/PendingIntent;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "iconId":I
    .end local v4    # "item":Landroidx/browser/browseractions/BrowserActionItem;
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method static setDialogShownListenter(Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;)V
    .locals 0
    .param p0, "dialogListener"    # Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 368
    sput-object p0, Landroidx/browser/browseractions/BrowserActionsIntent;->sDialogListenter:Landroidx/browser/browseractions/BrowserActionsIntent$BrowserActionsFallDialogListener;

    .line 369
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Landroidx/browser/browseractions/BrowserActionsIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
