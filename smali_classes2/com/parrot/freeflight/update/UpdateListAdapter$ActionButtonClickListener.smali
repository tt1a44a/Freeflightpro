.class Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;
.super Ljava/lang/Object;
.source "UpdateListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/update/UpdateListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActionButtonClickListener"
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;->mContext:Landroid/content/Context;

    .line 215
    iput-object p2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;->mArgs:Landroid/os/Bundle;

    .line 216
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/parrot/freeflight/update/UpdateListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/os/Bundle;
    .param p3, "x2"    # Lcom/parrot/freeflight/update/UpdateListAdapter$1;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;->mArgs:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/update/UpdaterActivity;->getStartingIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/update/UpdateListAdapter$ActionButtonClickListener;->mArgs:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/parrot/freeflight/update/UpdaterActivity;->getStartingIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method
