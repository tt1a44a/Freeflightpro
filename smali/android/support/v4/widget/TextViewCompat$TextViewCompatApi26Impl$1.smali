.class Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;
.super Ljava/lang/Object;
.source "TextViewCompat.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;->setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64


# instance fields
.field private mCanUseMenuBuilderReferences:Z

.field private mInitializedMenuBuilderReferences:Z

.field private mMenuBuilderClass:Ljava/lang/Class;

.field private mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

.field final synthetic this$0:Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;

    .prologue
    .line 351
    iput-object p1, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->this$0:Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl;

    iput-object p2, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    iput-object p3, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mInitializedMenuBuilderReferences:Z

    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 481
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    .line 470
    invoke-direct {p0, p2}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->isEditable(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 471
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 470
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v2, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    instance-of v0, p1, Landroid/app/Activity;

    .line 442
    .local v0, "canStartActivityForResult":Z
    if-nez v0, :cond_1

    .line 452
    :cond_0
    return-object v2

    .line 446
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 447
    .local v3, "unfiltered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 448
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 449
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isEditable(Landroid/widget/TextView;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 475
    instance-of v0, p1, Landroid/text/Editable;

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p1}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 456
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 459
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_0

    .line 462
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 463
    invoke-virtual {p2, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private recomputeProcessTextMenuItems(Landroid/view/Menu;)V
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 387
    iget-object v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 388
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 390
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    iget-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mInitializedMenuBuilderReferences:Z

    if-nez v8, :cond_0

    .line 391
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mInitializedMenuBuilderReferences:Z

    .line 393
    :try_start_0
    const-string v8, "com.android.internal.view.menu.MenuBuilder"

    .line 394
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderClass:Ljava/lang/Class;

    .line 395
    iget-object v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderClass:Ljava/lang/Class;

    const-string/jumbo v9, "removeItemAt"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 396
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 397
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mCanUseMenuBuilderReferences:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 406
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mCanUseMenuBuilderReferences:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderClass:Ljava/lang/Class;

    .line 407
    invoke-virtual {v8, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v6, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 411
    .local v6, "removeItemAtMethod":Ljava/lang/reflect/Method;
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_4

    .line 412
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 413
    .local v4, "item":Landroid/view/MenuItem;
    invoke-interface {v4}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string v8, "android.intent.action.PROCESS_TEXT"

    .line 414
    invoke-interface {v4}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 415
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 411
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 398
    .end local v2    # "i":I
    .end local v4    # "item":Landroid/view/MenuItem;
    .end local v6    # "removeItemAtMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderClass:Ljava/lang/Class;

    .line 400
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    .line 401
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->mCanUseMenuBuilderReferences:Z

    goto :goto_0

    .line 409
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "removeItemAt"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 410
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    goto :goto_1

    .line 418
    :catch_1
    move-exception v1

    .line 436
    :cond_3
    :goto_4
    return-void

    .line 427
    .restart local v2    # "i":I
    .restart local v6    # "removeItemAtMethod":Ljava/lang/reflect/Method;
    :cond_4
    invoke-direct {p0, v0, v5}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    .line 428
    .local v7, "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 429
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 430
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    const/4 v8, 0x0

    const/4 v9, 0x0

    add-int/lit8 v10, v2, 0x64

    .line 432
    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 430
    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$textView:Landroid/widget/TextView;

    .line 433
    invoke-direct {p0, v3, v9}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x1

    .line 434
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 418
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "removeItemAtMethod":Ljava/lang/reflect/Method;
    .end local v7    # "supportedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_4

    .line 398
    :catch_4
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 384
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 372
    invoke-direct {p0, p2}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->recomputeProcessTextMenuItems(Landroid/view/Menu;)V

    .line 373
    iget-object v0, p0, Landroid/support/v4/widget/TextViewCompat$TextViewCompatApi26Impl$1;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
