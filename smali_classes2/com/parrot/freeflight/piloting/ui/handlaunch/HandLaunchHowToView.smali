.class public Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;
.super Landroid/widget/RelativeLayout;
.source "HandLaunchHowToView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, -0x1

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    const v4, 0x7f0c00e4

    invoke-static {p1, v4, p0}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    const v4, 0x7f050118

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;->setBackgroundResource(I)V

    .line 23
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;->setClickable(Z)V

    .line 25
    const v4, 0x7f0a007c

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 26
    .local v0, "gotItButton":Landroid/widget/Button;
    const v4, 0x7f0a0474

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    .local v1, "instructions1":Landroid/widget/TextView;
    const v4, 0x7f0a0475

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 28
    .local v2, "instructions2":Landroid/widget/TextView;
    const v4, 0x7f0a0476

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 30
    .local v3, "instructions3":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>1. </b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f110339

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>2. </b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f11033a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>3. </b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f11033b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v4, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$1;

    invoke-direct {v4, p0, p2}, Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$1;-><init>(Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView;Lcom/parrot/freeflight/piloting/ui/handlaunch/HandLaunchHowToView$HandLaunchHowToListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 42
    return-void
.end method
