.class public Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;
.super Landroid/widget/RelativeLayout;
.source "HandLaunchSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, -0x1

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    const v2, 0x7f0c00e5

    invoke-static {p1, v2, p0}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 20
    const v2, 0x7f050118

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;->setBackgroundResource(I)V

    .line 21
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;->setClickable(Z)V

    .line 23
    const v2, 0x7f0a007d

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 24
    .local v0, "activateButton":Landroid/widget/Button;
    const v2, 0x7f0a007e

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 26
    .local v1, "dismissButton":Landroid/widget/Button;
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$1;

    invoke-direct {v2, p0, p2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$2;

    invoke-direct {v2, p0, p2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$2;-><init>(Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchSuggestionView$HandLaunchSuggestionListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 40
    return-void
.end method
