.class public interface abstract Lorg/apache/sanselan/formats/tiff/constants/AllTagConstants;
.super Ljava/lang/Object;
.source "AllTagConstants.java"

# interfaces
.implements Lorg/apache/sanselan/SanselanConstants;
.implements Lorg/apache/sanselan/formats/tiff/constants/TiffTagConstants;
.implements Lorg/apache/sanselan/formats/tiff/constants/ExifTagConstants;
.implements Lorg/apache/sanselan/formats/tiff/constants/GPSTagConstants;


# static fields
.field public static final ALL_TAGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/AllTagConstants;->ALL_TIFF_TAGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/AllTagConstants;->ALL_EXIF_TAGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/sanselan/formats/tiff/constants/AllTagConstants;->ALL_GPS_TAGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/sanselan/formats/tiff/constants/TagConstantsUtils;->mergeTagLists([[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;)[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    move-result-object v0

    sput-object v0, Lorg/apache/sanselan/formats/tiff/constants/AllTagConstants;->ALL_TAGS:[Lorg/apache/sanselan/formats/tiff/constants/TagInfo;

    return-void
.end method
