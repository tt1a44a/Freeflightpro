.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;
.super Lcom/parrot/freeflight/piloting/FullScreenActivity;
.source "FpvGlassesChoiceActivity.java"


# instance fields
.field private mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;)Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v3, 0x7f0c0037

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->setContentView(I)V

    .line 28
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/AutoLaunchManager;->getFpvStatePreference()Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->mFpvStatePreference:Lcom/parrot/freeflight/piloting/preference/FpvStatePreference;

    .line 30
    const v3, 0x7f0a01d8

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 31
    .local v1, "glasses1ImageView":Landroid/widget/RadioButton;
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$1;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$1;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v3, 0x7f0a01d9

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 41
    .local v2, "glasses2ImageView":Landroid/widget/RadioButton;
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$2;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v3, 0x7f0a0053

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 51
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v3, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity$3;-><init>(Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v3, 0x7f0a04c8

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 59
    const v3, 0x7f0a0440

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 60
    const v3, 0x7f0a0441

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvGlassesChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 62
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    return-void
.end method
