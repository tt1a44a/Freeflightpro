.class public Lcom/parrot/freeflight/piloting/FullScreenActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FullScreenActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/FullScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/FullScreenActivity;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->hideSystemUi()V

    return-void
.end method

.method private hideSystemUi()V
    .locals 3

    .prologue
    .line 32
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->hideSystemUi()V

    .line 15
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/piloting/FullScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity$1;-><init>(Lcom/parrot/freeflight/piloting/FullScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 21
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/FullScreenActivity;->hideSystemUi()V

    .line 29
    :cond_0
    return-void
.end method
