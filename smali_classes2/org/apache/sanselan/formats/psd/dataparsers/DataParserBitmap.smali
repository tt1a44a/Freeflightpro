.class public Lorg/apache/sanselan/formats/psd/dataparsers/DataParserBitmap;
.super Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;
.source "DataParserBitmap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/apache/sanselan/formats/psd/dataparsers/DataParser;-><init>()V

    return-void
.end method


# virtual methods
.method public getBasicChannelsCount()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method protected getRGB([[[IIILorg/apache/sanselan/formats/psd/ImageContents;)I
    .locals 5
    .param p1, "data"    # [[[I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "imageContents"    # Lorg/apache/sanselan/formats/psd/ImageContents;

    .prologue
    .line 27
    const/4 v3, 0x0

    aget-object v3, p1, v3

    aget-object v3, v3, p3

    aget v3, v3, p2

    and-int/lit16 v2, v3, 0xff

    .line 28
    .local v2, "sample":I
    if-nez v2, :cond_0

    .line 29
    const/16 v2, 0xff

    .line 33
    :goto_0
    const/16 v0, 0xff

    .line 35
    .local v0, "alpha":I
    const/high16 v3, -0x1000000

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xff

    shl-int/lit8 v4, v4, 0x0

    or-int v1, v3, v4

    .line 38
    .local v1, "rgb":I
    return v1

    .line 31
    .end local v0    # "alpha":I
    .end local v1    # "rgb":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
