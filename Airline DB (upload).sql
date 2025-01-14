--delete db if it exists 
IF DB_ID('SwiftAirways') IS NOT NULL	--check if db exists
	DROP DATABASE SwiftAirways
GO

--create db
IF DB_ID('SwiftAirways') IS NULL	--check if db does not exists
	CREATE DATABASE SwiftAirways
GO

USE [SwiftAirways]
GO

/****** Object:  Table [dbo].[Passenger]    Script Date: 22/11/2017 20:48:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Passenger](
	[PassengerID] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NULL,
	[BirthDate] [datetime] NOT NULL,
	[Gender] [tinyint] NOT NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Email] [nvarchar](80) NULL,
	[PostalAddress] [nvarchar](100) NULL,
	[Zipcode] [nvarchar](15) NULL,
	[City] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
 CONSTRAINT [PK_Passenger] PRIMARY KEY CLUSTERED 
(
	[PassengerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Booking]    Script Date: 27/11/2017 15:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingID] [int] IDENTITY(1,1) NOT NULL,
	[PassengerID] [int] NOT NULL,
	[FlightNumber] [nvarchar](20) NULL,
	[SeatNumber] [smallint] NULL,
	[Baggage] [nvarchar](20) NULL,
	[BookingClass] [nvarchar](20) NULL,
	[BookingStatus] [nvarchar](20) NULL,
	[PaymentAmount] [float] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (1, 53, N'11', 51, N'408-46-5772', N'First', N'Pending', 195.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (2, 6, N'25', 38, N'354-95-3313', N'Economy', N'Completed', 91.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (3, 200, N'30', 67, N'749-40-1787', N'Economy', N'Completed', 39.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (4, 66, N'7', 7, N'368-65-8533', N'Economy', N'Completed', 75.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (5, 20, N'12', 11, N'885-13-0354', N'Economy', N'Cancelled', 64.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (6, 59, N'17', 66, N'452-75-1815', N'Economy', N'Completed', 88.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (7, 157, N'4', 114, N'451-14-3152', N'Economy', N'Completed', 74.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (8, 169, N'18', 59, N'755-73-2985', N'First', N'Cancelled', 177.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (9, 18, N'21', 164, N'343-73-1771', N'Economy', N'Completed', 27.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (10, 115, N'15', 5, N'867-53-4282', N'Economy', N'Completed', 68.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (11, 58, N'29', 66, N'790-44-0297', N'Economy', N'Completed', 40.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (12, 50, N'24', 149, N'892-48-2622', N'Economy', N'Cancelled', 75.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (13, 12, N'28', 32, N'377-39-4036', N'Economy', N'Completed', 118.18)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (14, 27, N'15', 149, N'229-29-4466', N'Economy', N'Completed', 99.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (15, 111, N'4', 70, N'884-39-8994', N'Economy', N'Completed', 94.92)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (16, 71, N'27', 28, N'669-40-7120', N'Economy', N'Completed', 30.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (17, 19, N'4', 150, N'228-95-0434', N'First', N'Pending', 104.68)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (18, 41, N'4', 179, N'204-74-5047', N'Economy', N'Completed', 92.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (19, 24, N'29', 78, N'524-69-6907', N'Business', N'Cancelled', 197.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (20, 6, N'10', 177, N'667-93-9229', N'Economy', N'Completed', 40.82)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (21, 176, N'5', 70, N'860-15-9661', N'Economy', N'Completed', 43.17)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (22, 149, N'4', 55, N'678-80-9639', N'Economy', N'Cancelled', 119.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (23, 53, N'9', 24, N'571-79-5698', N'Economy', N'Completed', 79.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (24, 101, N'26', 161, N'360-87-3345', N'Economy', N'Completed', 81.01)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (25, 32, N'19', 7, N'654-40-5341', N'Business', N'Pending', 169.17)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (26, 5, N'27', 80, N'726-97-3101', N'Business', N'Pending', 124.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (27, 86, N'26', 114, N'874-86-8671', N'First', N'Cancelled', 163.36)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (28, 31, N'19', 2, N'643-05-3366', N'Business', N'Completed', 198.71)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (29, 167, N'21', 140, N'113-49-3086', N'Economy', N'Pending', 100.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (30, 124, N'7', 192, N'246-90-8529', N'First', N'Pending', 162)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (31, 191, N'26', 77, N'573-53-8916', N'First', N'Completed', 183.63)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (32, 127, N'17', 72, N'503-15-5730', N'First', N'Cancelled', 153.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (33, 111, N'11', 122, N'136-04-1583', N'First', N'Cancelled', 141.03)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (34, 151, N'23', 127, N'782-79-4990', N'First', N'Cancelled', 158.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (35, 36, N'19', 31, N'277-43-0121', N'First', N'Cancelled', 194.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (36, 74, N'1', 179, N'418-53-0728', N'Economy', N'Completed', 38.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (37, 68, N'14', 150, N'139-40-2471', N'Business', N'Pending', 145.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (38, 172, N'10', 126, N'112-07-1661', N'Business', N'Completed', 191.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (39, 15, N'20', 166, N'460-73-5854', N'Economy', N'Completed', 81.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (40, 64, N'9', 17, N'754-24-7383', N'Business', N'Pending', 100.76)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (41, 173, N'27', 103, N'342-69-9014', N'Economy', N'Completed', 33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (42, 195, N'14', 44, N'810-77-0246', N'Economy', N'Cancelled', 25.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (43, 42, N'26', 3, N'737-15-7268', N'Economy', N'Completed', 23.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (44, 144, N'1', 144, N'845-21-2083', N'Economy', N'Completed', 52.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (45, 137, N'9', 88, N'855-08-0873', N'Economy', N'Pending', 53.92)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (46, 56, N'1', 45, N'142-02-9349', N'Economy', N'Completed', 53.32)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (47, 18, N'25', 138, N'417-09-3830', N'Business', N'Completed', 133.17)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (48, 173, N'1', 30, N'633-66-8579', N'Economy', N'Completed', 44.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (49, 8, N'4', 39, N'186-22-0181', N'Business', N'Cancelled', 128.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (50, 105, N'11', 189, N'806-42-0936', N'Business', N'Pending', 121.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (51, 105, N'30', 44, N'190-38-0804', N'Business', N'Completed', 164.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (52, 97, N'16', 54, N'463-27-8254', N'Business', N'Completed', 174.57)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (53, 178, N'3', 161, N'708-92-7921', N'Economy', N'Completed', 69.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (54, 52, N'14', 89, N'640-98-0442', N'Economy', N'Completed', 83.9)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (55, 43, N'3', 33, N'550-20-7168', N'First', N'Pending', 160.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (56, 117, N'11', 143, N'801-26-6351', N'First', N'Pending', 198.62)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (57, 172, N'26', 187, N'361-07-2404', N'Economy', N'Completed', 46.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (58, 124, N'5', 191, N'336-10-3528', N'Business', N'Cancelled', 164.58)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (59, 108, N'21', 151, N'746-21-4509', N'Economy', N'Cancelled', 144.15)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (60, 46, N'24', 117, N'233-27-6558', N'Business', N'Completed', 153.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (61, 72, N'25', 87, N'392-44-3288', N'Economy', N'Cancelled', 122.25)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (62, 94, N'11', 18, N'192-41-8253', N'Economy', N'Pending', 83.43)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (63, 12, N'7', 160, N'751-46-3745', N'Economy', N'Completed', 80.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (64, 182, N'21', 129, N'876-19-5816', N'Business', N'Cancelled', 191.64)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (65, 126, N'6', 129, N'801-24-3030', N'First', N'Pending', 194.53)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (66, 162, N'5', 154, N'218-76-5002', N'Economy', N'Completed', 87.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (67, 200, N'20', 134, N'124-52-6530', N'Business', N'Pending', 145.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (68, 198, N'30', 58, N'190-09-9477', N'Business', N'Pending', 170.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (69, 43, N'14', 190, N'660-51-6046', N'Economy', N'Pending', 112.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (70, 128, N'3', 169, N'201-12-9163', N'Economy', N'Completed', 99.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (71, 38, N'28', 53, N'789-81-1271', N'Economy', N'Completed', 99.57)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (72, 118, N'13', 101, N'777-69-1391', N'Business', N'Completed', 166.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (73, 140, N'16', 93, N'626-26-1421', N'First', N'Pending', 189.68)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (74, 118, N'8', 101, N'196-31-7289', N'Business', N'Pending', 128.64)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (75, 147, N'6', 22, N'758-24-0089', N'Economy', N'Completed', 38.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (76, 157, N'7', 71, N'258-59-7310', N'First', N'Pending', 170.64)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (77, 84, N'12', 177, N'319-74-5716', N'Business', N'Cancelled', 120.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (78, 148, N'13', 61, N'755-47-6786', N'Business', N'Completed', 199.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (79, 181, N'20', 107, N'279-42-2929', N'Business', N'Completed', 151.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (80, 55, N'5', 141, N'660-45-3757', N'First', N'Pending', 139.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (81, 145, N'30', 85, N'792-49-0239', N'Economy', N'Cancelled', 88.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (82, 199, N'19', 50, N'787-85-4967', N'Economy', N'Completed', 94.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (83, 179, N'12', 48, N'875-21-0595', N'First', N'Cancelled', 189.43)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (84, 196, N'4', 30, N'415-66-9950', N'Economy', N'Completed', 48.18)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (85, 70, N'24', 88, N'234-68-7564', N'Economy', N'Pending', 96.49)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (86, 92, N'14', 3, N'154-95-1028', N'Business', N'Pending', 178.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (87, 15, N'20', 93, N'711-59-9627', N'Economy', N'Pending', 136.92)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (88, 101, N'10', 90, N'292-12-7803', N'Economy', N'Completed', 91.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (89, 163, N'12', 20, N'894-70-7888', N'Economy', N'Pending', 142.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (90, 107, N'10', 64, N'235-12-8918', N'First', N'Pending', 197.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (91, 84, N'16', 2, N'825-71-7387', N'Economy', N'Completed', 91.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (92, 3, N'25', 149, N'423-74-2410', N'Business', N'Cancelled', 181.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (93, 38, N'15', 82, N'856-83-3430', N'First', N'Completed', 119.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (94, 9, N'27', 133, N'800-35-7457', N'First', N'Cancelled', 193.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (95, 126, N'21', 162, N'120-50-3472', N'Business', N'Pending', 193.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (96, 167, N'15', 58, N'384-82-7915', N'Economy', N'Completed', 24.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (97, 32, N'7', 4, N'485-73-3765', N'Economy', N'Completed', 88.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (98, 17, N'28', 139, N'532-54-1379', N'Economy', N'Pending', 23.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (99, 150, N'16', 42, N'364-20-1880', N'Economy', N'Cancelled', 115.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (100, 111, N'24', 164, N'264-51-6485', N'Business', N'Completed', 172.84)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (101, 30, N'17', 51, N'789-43-7795', N'Business', N'Completed', 167.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (102, 38, N'13', 151, N'492-58-8868', N'Economy', N'Completed', 93.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (103, 68, N'12', 117, N'257-38-9698', N'Economy', N'Completed', 31.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (104, 70, N'7', 32, N'816-17-4037', N'Economy', N'Completed', 60)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (105, 82, N'6', 55, N'527-55-6529', N'First', N'Completed', 172.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (106, 155, N'14', 15, N'663-02-6715', N'Economy', N'Cancelled', 98.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (107, 51, N'2', 155, N'609-53-1802', N'Business', N'Pending', 117.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (108, 147, N'11', 32, N'380-42-8971', N'Business', N'Cancelled', 116.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (109, 51, N'29', 62, N'769-20-0557', N'First', N'Completed', 187.53)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (110, 130, N'28', 195, N'386-79-6978', N'Business', N'Completed', 192.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (111, 58, N'14', 20, N'577-67-2024', N'Economy', N'Pending', 141.26)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (112, 67, N'14', 180, N'834-81-8259', N'Business', N'Cancelled', 140.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (113, 165, N'13', 193, N'651-03-8954', N'First', N'Cancelled', 130.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (114, 189, N'7', 82, N'331-70-9365', N'First', N'Pending', 122.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (115, 7, N'7', 13, N'801-67-9356', N'First', N'Completed', 162.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (116, 14, N'14', 115, N'895-05-6937', N'Business', N'Pending', 154.82)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (117, 150, N'15', 119, N'651-15-3307', N'Economy', N'Completed', 40.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (118, 40, N'10', 84, N'124-72-3404', N'Economy', N'Completed', 93.25)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (119, 55, N'25', 93, N'116-82-8063', N'Economy', N'Completed', 24.15)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (120, 147, N'2', 189, N'331-64-3978', N'First', N'Cancelled', 118.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (121, 156, N'25', 42, N'590-45-4557', N'Economy', N'Cancelled', 50.13)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (122, 62, N'24', 132, N'502-41-7505', N'Economy', N'Pending', 132.32)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (123, 60, N'12', 128, N'126-96-2249', N'Economy', N'Completed', 33.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (124, 156, N'25', 142, N'889-56-6545', N'Economy', N'Completed', 50.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (125, 193, N'19', 119, N'521-54-6382', N'Economy', N'Completed', 49.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (126, 123, N'12', 172, N'258-73-5070', N'Economy', N'Completed', 58.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (127, 122, N'27', 21, N'825-85-2925', N'Business', N'Completed', 166.67)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (128, 90, N'2', 112, N'494-26-5494', N'Economy', N'Completed', 92.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (129, 90, N'5', 91, N'434-71-4144', N'Economy', N'Pending', 117.59)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (130, 85, N'24', 182, N'401-74-7624', N'First', N'Completed', 113.71)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (131, 118, N'13', 46, N'297-16-1598', N'First', N'Cancelled', 184.53)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (132, 169, N'28', 131, N'177-79-0056', N'Business', N'Pending', 125.91)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (133, 95, N'11', 41, N'190-48-6531', N'Economy', N'Completed', 24.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (134, 81, N'4', 10, N'303-05-3771', N'Business', N'Completed', 196.68)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (135, 103, N'3', 110, N'754-23-5157', N'First', N'Pending', 145.86)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (136, 176, N'13', 103, N'135-14-3084', N'Economy', N'Completed', 131.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (137, 49, N'20', 64, N'890-04-8515', N'First', N'Pending', 100.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (138, 91, N'15', 129, N'401-37-1040', N'Economy', N'Cancelled', 55.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (139, 182, N'27', 137, N'351-59-0731', N'Business', N'Completed', 173.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (140, 99, N'3', 45, N'380-36-8058', N'Business', N'Completed', 199.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (141, 24, N'28', 42, N'455-12-7105', N'Economy', N'Pending', 71.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (142, 53, N'27', 45, N'819-25-3412', N'Business', N'Completed', 191.57)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (143, 137, N'1', 59, N'720-15-0923', N'Economy', N'Pending', 136.25)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (144, 46, N'24', 36, N'700-71-6288', N'Business', N'Completed', 156.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (145, 66, N'22', 173, N'283-91-9874', N'Economy', N'Completed', 29.03)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (146, 45, N'19', 115, N'467-94-4039', N'Economy', N'Cancelled', 79.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (147, 156, N'2', 84, N'122-66-7949', N'Economy', N'Pending', 139.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (148, 40, N'7', 186, N'204-47-6445', N'First', N'Pending', 143.76)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (149, 150, N'11', 33, N'475-94-1560', N'Economy', N'Pending', 143.13)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (150, 79, N'22', 150, N'568-02-1821', N'Business', N'Cancelled', 119.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (151, 100, N'10', 131, N'657-52-3075', N'Economy', N'Cancelled', 23.19)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (152, 152, N'2', 196, N'664-19-7150', N'Economy', N'Pending', 95.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (153, 57, N'28', 70, N'238-90-1837', N'First', N'Cancelled', 105.82)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (154, 113, N'18', 120, N'579-77-8854', N'First', N'Cancelled', 146.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (155, 85, N'13', 17, N'197-64-7488', N'Economy', N'Cancelled', 109)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (156, 178, N'30', 29, N'538-77-8882', N'Economy', N'Cancelled', 41.15)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (157, 81, N'20', 158, N'840-33-7128', N'Economy', N'Completed', 44.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (158, 28, N'12', 46, N'857-17-8702', N'Business', N'Completed', 184.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (159, 152, N'21', 116, N'222-23-4319', N'Economy', N'Completed', 87.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (160, 173, N'22', 136, N'318-45-7336', N'Business', N'Pending', 136.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (161, 41, N'8', 117, N'702-93-3254', N'Economy', N'Completed', 39.62)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (162, 129, N'2', 48, N'696-74-8179', N'Economy', N'Completed', 68.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (163, 35, N'11', 134, N'645-60-6469', N'Economy', N'Pending', 95.98)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (164, 93, N'13', 168, N'675-47-6201', N'Economy', N'Cancelled', 35.91)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (165, 181, N'28', 33, N'488-50-8382', N'Economy', N'Completed', 73.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (166, 147, N'26', 52, N'663-69-7093', N'Economy', N'Completed', 70.53)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (167, 78, N'25', 81, N'543-77-8958', N'Economy', N'Pending', 102.03)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (168, 194, N'1', 200, N'501-36-9583', N'Economy', N'Cancelled', 124.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (169, 29, N'30', 37, N'349-05-8594', N'Economy', N'Completed', 39.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (170, 6, N'20', 47, N'208-11-8199', N'Business', N'Completed', 189.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (171, 76, N'19', 168, N'196-76-4935', N'First', N'Completed', 155.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (172, 175, N'22', 8, N'602-32-5203', N'Economy', N'Cancelled', 111.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (173, 172, N'17', 141, N'868-17-2406', N'Economy', N'Pending', 115.92)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (174, 54, N'26', 66, N'584-45-7771', N'First', N'Cancelled', 148.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (175, 24, N'27', 68, N'370-20-9067', N'Economy', N'Pending', 128)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (176, 59, N'5', 77, N'436-25-7653', N'First', N'Cancelled', 148.32)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (177, 97, N'16', 83, N'225-55-4295', N'Economy', N'Completed', 27.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (178, 156, N'2', 65, N'347-34-3107', N'Economy', N'Completed', 37.53)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (179, 140, N'2', 78, N'869-05-0493', N'First', N'Cancelled', 101.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (180, 152, N'3', 113, N'662-28-3495', N'Economy', N'Completed', 59.91)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (181, 171, N'12', 107, N'840-85-9550', N'First', N'Pending', 138.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (182, 59, N'2', 192, N'163-95-7204', N'Economy', N'Completed', 30.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (183, 3, N'3', 172, N'568-37-0560', N'First', N'Cancelled', 170.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (184, 75, N'18', 173, N'384-49-8594', N'Business', N'Cancelled', 120.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (185, 9, N'22', 60, N'706-60-9505', N'First', N'Cancelled', 109.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (186, 168, N'24', 37, N'808-02-4299', N'First', N'Pending', 135.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (187, 55, N'27', 57, N'734-87-6290', N'Business', N'Cancelled', 128.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (188, 101, N'8', 88, N'574-13-1832', N'Economy', N'Completed', 99.53)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (189, 77, N'10', 162, N'506-73-7312', N'Economy', N'Completed', 25.44)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (190, 91, N'19', 57, N'137-44-5448', N'Economy', N'Completed', 52.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (191, 99, N'11', 51, N'151-78-7210', N'First', N'Pending', 180.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (192, 3, N'30', 42, N'104-38-8923', N'Economy', N'Completed', 99.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (193, 58, N'9', 152, N'105-57-4250', N'Business', N'Cancelled', 176.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (194, 145, N'28', 7, N'312-50-5412', N'Business', N'Completed', 134.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (195, 97, N'22', 140, N'600-69-5097', N'Economy', N'Pending', 47.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (196, 23, N'11', 40, N'607-94-4971', N'Economy', N'Pending', 30.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (197, 176, N'14', 57, N'505-49-6927', N'Economy', N'Completed', 39.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (198, 144, N'2', 31, N'407-12-9179', N'Economy', N'Pending', 60.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (199, 39, N'24', 152, N'187-98-0715', N'Economy', N'Completed', 63.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (200, 40, N'17', 199, N'812-32-1379', N'First', N'Completed', 175.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (201, 148, N'10', 9, N'241-24-1609', N'Economy', N'Completed', 27.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (202, 60, N'12', 82, N'689-83-7099', N'First', N'Cancelled', 145.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (203, 147, N'15', 150, N'627-55-6449', N'First', N'Pending', 182.9)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (204, 65, N'25', 158, N'755-90-4977', N'First', N'Pending', 111.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (205, 137, N'11', 92, N'805-81-7579', N'Business', N'Pending', 104.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (206, 45, N'28', 69, N'273-59-0153', N'First', N'Pending', 101.01)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (207, 14, N'13', 41, N'677-87-8292', N'First', N'Pending', 133.59)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (208, 118, N'7', 29, N'803-64-6614', N'Economy', N'Completed', 108.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (209, 177, N'3', 69, N'418-57-8630', N'Business', N'Completed', 156.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (210, 92, N'27', 51, N'899-88-7060', N'Economy', N'Completed', 26.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (211, 120, N'4', 191, N'155-47-6018', N'Economy', N'Pending', 46.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (212, 124, N'3', 69, N'314-75-3519', N'Economy', N'Completed', 70.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (213, 115, N'5', 67, N'504-01-3566', N'Economy', N'Completed', 88.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (214, 146, N'10', 95, N'716-79-6858', N'Economy', N'Completed', 25.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (215, 29, N'12', 70, N'659-09-1878', N'Business', N'Completed', 139.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (216, 41, N'6', 165, N'370-87-2762', N'Economy', N'Completed', 34.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (217, 169, N'29', 31, N'894-29-8286', N'Economy', N'Completed', 62.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (218, 175, N'1', 155, N'612-23-9441', N'First', N'Cancelled', 130.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (219, 13, N'25', 123, N'576-03-3419', N'Economy', N'Completed', 108.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (220, 92, N'28', 33, N'896-52-5928', N'Economy', N'Cancelled', 141.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (221, 84, N'21', 1, N'220-70-6639', N'Economy', N'Completed', 82.76)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (222, 194, N'5', 26, N'126-96-6673', N'Economy', N'Completed', 81.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (223, 74, N'1', 49, N'258-55-3832', N'Business', N'Pending', 144.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (224, 88, N'3', 65, N'646-15-8925', N'Economy', N'Cancelled', 148.59)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (225, 183, N'27', 92, N'494-99-1304', N'Economy', N'Pending', 27.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (226, 106, N'20', 37, N'434-41-7195', N'First', N'Cancelled', 126.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (227, 77, N'10', 163, N'183-31-2990', N'Economy', N'Completed', 80.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (228, 2, N'3', 91, N'799-94-6017', N'Business', N'Completed', 182.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (229, 174, N'23', 119, N'472-33-8955', N'Economy', N'Pending', 67.15)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (230, 31, N'13', 15, N'213-75-0867', N'Economy', N'Completed', 95.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (231, 150, N'15', 27, N'719-45-9076', N'First', N'Pending', 152.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (232, 3, N'22', 96, N'807-36-7500', N'Business', N'Completed', 155.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (233, 136, N'7', 117, N'813-60-5145', N'Business', N'Cancelled', 118.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (234, 25, N'18', 122, N'412-21-2492', N'Economy', N'Completed', 36.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (235, 130, N'19', 177, N'351-17-3446', N'Business', N'Pending', 157.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (236, 121, N'19', 29, N'587-53-9149', N'Business', N'Pending', 138.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (237, 190, N'21', 27, N'270-14-8857', N'First', N'Completed', 117.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (238, 42, N'28', 1, N'375-47-6333', N'Economy', N'Pending', 42.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (239, 118, N'30', 68, N'727-36-7796', N'Economy', N'Pending', 75.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (240, 28, N'23', 193, N'769-99-2422', N'First', N'Completed', 162.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (241, 66, N'20', 178, N'277-16-2405', N'Business', N'Pending', 175.64)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (242, 153, N'23', 153, N'146-74-4563', N'Economy', N'Completed', 98.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (243, 51, N'2', 101, N'420-20-5581', N'Economy', N'Completed', 66.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (244, 10, N'22', 84, N'597-53-9073', N'Economy', N'Cancelled', 112.46)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (245, 43, N'20', 137, N'880-01-7515', N'Economy', N'Completed', 28.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (246, 170, N'6', 55, N'612-44-7241', N'Economy', N'Completed', 39.26)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (247, 141, N'21', 59, N'400-60-2534', N'First', N'Pending', 188.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (248, 191, N'18', 178, N'670-45-7494', N'First', N'Completed', 159.63)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (249, 79, N'30', 64, N'653-11-6390', N'First', N'Completed', 178.71)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (250, 55, N'10', 36, N'784-23-1452', N'Business', N'Completed', 195.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (251, 5, N'29', 160, N'639-15-2458', N'Business', N'Cancelled', 104.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (252, 110, N'19', 150, N'601-96-9323', N'Business', N'Cancelled', 168.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (253, 32, N'3', 20, N'264-25-7478', N'First', N'Completed', 101.57)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (254, 128, N'12', 12, N'645-01-7268', N'Business', N'Cancelled', 184.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (255, 123, N'27', 178, N'311-33-0171', N'Economy', N'Completed', 47.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (256, 136, N'19', 7, N'519-52-4177', N'Business', N'Cancelled', 141.22)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (257, 122, N'1', 178, N'897-03-0082', N'Economy', N'Completed', 95.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (258, 146, N'11', 200, N'469-52-9164', N'Business', N'Completed', 174.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (259, 14, N'27', 73, N'851-81-5235', N'First', N'Pending', 161.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (260, 53, N'13', 59, N'812-46-2208', N'Economy', N'Completed', 62.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (261, 111, N'17', 86, N'892-07-0741', N'Economy', N'Cancelled', 48.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (262, 126, N'18', 92, N'334-43-3547', N'Business', N'Cancelled', 144.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (263, 64, N'6', 87, N'448-35-4386', N'Business', N'Completed', 193.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (264, 71, N'25', 86, N'381-55-6158', N'Economy', N'Completed', 30.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (265, 148, N'12', 110, N'753-35-0680', N'Economy', N'Completed', 38.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (266, 51, N'25', 61, N'214-46-3816', N'First', N'Cancelled', 137.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (267, 1, N'23', 192, N'725-73-3690', N'Economy', N'Completed', 68.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (268, 29, N'29', 115, N'203-23-7954', N'Economy', N'Completed', 54.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (269, 18, N'25', 86, N'530-75-9965', N'Business', N'Completed', 118.17)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (270, 125, N'24', 113, N'230-41-6613', N'Business', N'Completed', 193.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (271, 67, N'9', 89, N'328-06-4066', N'Economy', N'Completed', 74.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (272, 51, N'27', 55, N'162-20-7980', N'Economy', N'Completed', 51.62)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (273, 9, N'20', 43, N'195-18-9856', N'Economy', N'Completed', 25.76)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (274, 37, N'9', 25, N'263-15-8206', N'Economy', N'Cancelled', 27.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (275, 83, N'11', 174, N'126-41-3901', N'Economy', N'Completed', 49.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (276, 45, N'20', 60, N'188-18-2432', N'Business', N'Completed', 157.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (277, 92, N'12', 172, N'814-36-9286', N'Economy', N'Cancelled', 21.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (278, 104, N'13', 100, N'855-62-9025', N'First', N'Pending', 182.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (279, 72, N'19', 113, N'174-86-3662', N'Economy', N'Completed', 96.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (280, 73, N'4', 44, N'185-49-7802', N'Economy', N'Completed', 43.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (281, 144, N'26', 143, N'146-58-5533', N'Economy', N'Pending', 94.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (282, 48, N'23', 63, N'638-27-6008', N'Economy', N'Pending', 72.52)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (283, 186, N'19', 199, N'185-02-6475', N'Business', N'Completed', 166.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (284, 61, N'28', 101, N'630-90-5930', N'Business', N'Pending', 102.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (285, 125, N'5', 143, N'551-12-2670', N'Economy', N'Cancelled', 116.52)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (286, 154, N'8', 128, N'762-33-5083', N'Business', N'Completed', 170.53)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (287, 14, N'13', 172, N'675-89-7434', N'Economy', N'Completed', 33.11)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (288, 150, N'18', 5, N'698-75-7050', N'Economy', N'Completed', 144.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (289, 19, N'5', 135, N'181-04-8364', N'Business', N'Pending', 128.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (290, 191, N'5', 183, N'424-72-5311', N'First', N'Pending', 106.25)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (291, 195, N'9', 15, N'185-68-9176', N'Economy', N'Completed', 63.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (292, 170, N'29', 58, N'312-91-6146', N'Business', N'Pending', 111.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (293, 13, N'1', 155, N'787-22-2988', N'Economy', N'Completed', 65.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (294, 32, N'29', 43, N'523-29-8295', N'Economy', N'Pending', 126.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (295, 105, N'13', 85, N'361-34-3656', N'Economy', N'Completed', 27.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (296, 166, N'8', 129, N'849-63-8347', N'Business', N'Completed', 178.57)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (297, 37, N'16', 85, N'703-16-8939', N'Economy', N'Completed', 44.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (298, 100, N'5', 191, N'335-40-8144', N'Business', N'Completed', 125.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (299, 67, N'18', 173, N'102-15-6560', N'Economy', N'Completed', 39.13)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (300, 80, N'17', 65, N'577-59-1314', N'Economy', N'Cancelled', 125.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (301, 125, N'1', 48, N'340-76-1271', N'Business', N'Completed', 160.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (302, 182, N'28', 173, N'292-99-8530', N'Business', N'Completed', 105.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (303, 126, N'27', 132, N'215-54-7472', N'Business', N'Completed', 144.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (304, 120, N'17', 79, N'114-76-0086', N'First', N'Pending', 112.25)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (305, 186, N'18', 182, N'795-29-9295', N'Business', N'Completed', 128.44)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (306, 49, N'23', 45, N'551-28-9443', N'Economy', N'Completed', 66.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (307, 130, N'2', 93, N'574-42-0373', N'Economy', N'Completed', 46.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (308, 123, N'23', 161, N'370-77-7931', N'Economy', N'Completed', 22.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (309, 112, N'24', 182, N'200-49-6335', N'Economy', N'Completed', 67.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (310, 195, N'10', 185, N'167-09-8545', N'Economy', N'Cancelled', 119.36)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (311, 12, N'5', 125, N'283-81-0525', N'Business', N'Completed', 164.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (312, 98, N'16', 109, N'793-39-7338', N'Business', N'Pending', 150.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (313, 78, N'26', 45, N'792-53-5621', N'Business', N'Completed', 163.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (314, 196, N'17', 26, N'282-30-0564', N'Economy', N'Pending', 74.71)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (315, 78, N'20', 40, N'760-10-8797', N'Business', N'Completed', 143.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (316, 141, N'7', 89, N'534-72-8068', N'Economy', N'Completed', 28.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (317, 118, N'20', 2, N'759-49-2535', N'Economy', N'Completed', 89.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (318, 82, N'22', 65, N'605-78-2562', N'Business', N'Completed', 162.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (319, 7, N'29', 179, N'273-73-1187', N'Economy', N'Completed', 65.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (320, 24, N'21', 137, N'491-05-7388', N'Economy', N'Completed', 86.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (321, 109, N'1', 184, N'704-47-8488', N'Business', N'Completed', 150.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (322, 103, N'2', 183, N'805-11-7544', N'First', N'Cancelled', 128.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (323, 20, N'20', 75, N'216-61-8488', N'Business', N'Cancelled', 117.67)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (324, 23, N'22', 142, N'243-64-6747', N'First', N'Pending', 123.58)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (325, 121, N'9', 25, N'843-47-1631', N'Economy', N'Completed', 56.84)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (326, 34, N'1', 141, N'695-50-6276', N'Economy', N'Completed', 44.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (327, 129, N'22', 4, N'508-83-1296', N'Economy', N'Completed', 26.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (328, 54, N'22', 20, N'894-09-2665', N'Business', N'Completed', 153.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (329, 71, N'10', 31, N'242-68-6446', N'First', N'Cancelled', 117.57)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (330, 125, N'27', 200, N'291-69-2729', N'Economy', N'Completed', 57.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (331, 92, N'3', 31, N'531-61-8951', N'First', N'Pending', 116.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (332, 105, N'30', 120, N'644-56-7334', N'Economy', N'Pending', 143.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (333, 147, N'1', 184, N'289-38-8450', N'Economy', N'Completed', 98.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (334, 181, N'6', 44, N'198-22-3526', N'Business', N'Pending', 157.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (335, 60, N'9', 140, N'367-18-0737', N'Economy', N'Cancelled', 93.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (336, 33, N'1', 154, N'265-28-7114', N'Economy', N'Completed', 99.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (337, 6, N'11', 122, N'212-02-5079', N'First', N'Cancelled', 109.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (338, 35, N'13', 111, N'248-40-2990', N'First', N'Pending', 111.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (339, 88, N'11', 33, N'839-82-1103', N'Economy', N'Completed', 46.11)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (340, 177, N'28', 8, N'788-80-6248', N'First', N'Completed', 129.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (341, 31, N'21', 80, N'295-17-7085', N'Economy', N'Pending', 48.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (342, 169, N'22', 155, N'308-74-2269', N'Business', N'Completed', 159.18)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (343, 31, N'15', 106, N'636-96-0397', N'Economy', N'Completed', 33.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (344, 89, N'15', 191, N'872-60-8562', N'Business', N'Completed', 197.82)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (345, 131, N'24', 123, N'313-20-3583', N'Business', N'Pending', 178.36)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (346, 161, N'27', 164, N'122-24-0213', N'Economy', N'Pending', 73.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (347, 99, N'16', 147, N'154-89-0164', N'Economy', N'Completed', 92.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (348, 106, N'19', 82, N'719-21-4682', N'Economy', N'Cancelled', 145.43)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (349, 67, N'20', 98, N'703-30-8557', N'Economy', N'Completed', 94.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (350, 9, N'29', 62, N'309-83-1396', N'First', N'Completed', 149.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (351, 38, N'27', 145, N'742-24-2156', N'Business', N'Cancelled', 155.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (352, 190, N'28', 90, N'106-23-8817', N'First', N'Pending', 176.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (353, 84, N'27', 90, N'578-11-3042', N'Business', N'Completed', 168.04)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (354, 57, N'26', 43, N'165-22-0237', N'Economy', N'Pending', 82.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (355, 34, N'8', 83, N'611-77-7416', N'Economy', N'Cancelled', 94.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (356, 126, N'21', 97, N'164-99-1777', N'Business', N'Cancelled', 113.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (357, 52, N'20', 162, N'144-58-0060', N'Business', N'Cancelled', 183.52)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (358, 106, N'9', 87, N'792-12-2030', N'Economy', N'Cancelled', 61.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (359, 157, N'4', 94, N'819-64-6747', N'Economy', N'Completed', 40.63)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (360, 25, N'14', 83, N'857-20-6294', N'Economy', N'Pending', 82.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (361, 18, N'9', 13, N'544-25-4146', N'First', N'Pending', 171.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (362, 51, N'17', 79, N'521-25-9215', N'Business', N'Cancelled', 124.36)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (363, 19, N'1', 186, N'576-29-3215', N'First', N'Pending', 103.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (364, 183, N'19', 199, N'718-32-8597', N'Economy', N'Completed', 39.98)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (365, 53, N'14', 189, N'542-02-5213', N'Economy', N'Completed', 62.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (366, 11, N'30', 19, N'482-18-1221', N'Business', N'Completed', 112.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (367, 95, N'6', 126, N'581-23-8439', N'Economy', N'Completed', 79.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (368, 102, N'1', 181, N'315-51-5993', N'Business', N'Cancelled', 180.71)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (369, 33, N'4', 33, N'589-59-3600', N'Business', N'Cancelled', 140.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (370, 196, N'11', 4, N'549-21-6525', N'Economy', N'Completed', 76.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (371, 116, N'8', 106, N'703-93-8708', N'Economy', N'Completed', 134.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (372, 105, N'20', 44, N'616-60-9696', N'Economy', N'Completed', 25.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (373, 20, N'8', 167, N'485-91-0178', N'Economy', N'Completed', 30.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (374, 109, N'8', 161, N'421-54-8592', N'Economy', N'Completed', 23.82)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (375, 43, N'4', 117, N'100-30-4608', N'Business', N'Pending', 144.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (376, 42, N'7', 121, N'575-78-4581', N'Economy', N'Completed', 84.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (377, 115, N'4', 130, N'869-61-8102', N'First', N'Pending', 129.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (378, 22, N'26', 129, N'581-64-3972', N'Economy', N'Completed', 27.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (379, 138, N'9', 10, N'198-92-6979', N'First', N'Pending', 121.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (380, 108, N'14', 121, N'783-47-1532', N'First', N'Completed', 118.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (381, 141, N'6', 103, N'410-60-7060', N'Business', N'Completed', 154.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (382, 127, N'11', 116, N'686-74-9264', N'Business', N'Completed', 179.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (383, 132, N'10', 53, N'352-41-6588', N'Economy', N'Cancelled', 113.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (384, 143, N'15', 121, N'615-93-7386', N'First', N'Pending', 159.46)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (385, 124, N'8', 69, N'561-98-3667', N'Economy', N'Pending', 25.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (386, 8, N'21', 105, N'738-73-1365', N'Economy', N'Completed', 43.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (387, 5, N'24', 46, N'134-29-2226', N'Economy', N'Completed', 44.46)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (388, 67, N'27', 178, N'215-66-7200', N'Economy', N'Completed', 36.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (389, 30, N'16', 66, N'865-34-3437', N'Economy', N'Completed', 35.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (390, 97, N'24', 183, N'803-29-6872', N'Economy', N'Cancelled', 68.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (391, 102, N'15', 4, N'856-69-6458', N'Economy', N'Pending', 86.76)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (392, 162, N'24', 134, N'658-57-3187', N'Business', N'Pending', 180.13)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (393, 16, N'4', 42, N'144-13-6632', N'Business', N'Completed', 182.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (394, 7, N'29', 137, N'263-35-3843', N'Business', N'Completed', 193.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (395, 125, N'28', 20, N'719-24-8639', N'Business', N'Cancelled', 145.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (396, 117, N'24', 158, N'129-32-7191', N'First', N'Cancelled', 144.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (397, 171, N'11', 91, N'849-92-4618', N'Business', N'Completed', 154.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (398, 129, N'20', 42, N'707-29-5823', N'Economy', N'Cancelled', 126.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (399, 141, N'2', 174, N'861-47-2040', N'Business', N'Completed', 107.46)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (400, 20, N'3', 177, N'611-51-0452', N'First', N'Completed', 104.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (401, 117, N'15', 114, N'370-84-0725', N'Economy', N'Cancelled', 125)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (402, 80, N'10', 143, N'514-48-3211', N'Business', N'Pending', 161.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (403, 12, N'18', 102, N'832-45-5915', N'Business', N'Cancelled', 186.18)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (404, 37, N'25', 99, N'311-77-9101', N'Business', N'Completed', 187.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (405, 160, N'24', 153, N'779-41-1149', N'Economy', N'Pending', 146.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (406, 35, N'2', 193, N'621-58-3451', N'First', N'Completed', 124.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (407, 1, N'7', 49, N'178-09-2085', N'Economy', N'Pending', 141.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (408, 127, N'25', 195, N'224-68-0528', N'Business', N'Pending', 102.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (409, 116, N'16', 130, N'790-70-5792', N'Business', N'Pending', 158.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (410, 10, N'19', 39, N'384-14-8713', N'Economy', N'Completed', 140.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (411, 166, N'16', 196, N'149-31-0855', N'Economy', N'Completed', 80.67)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (412, 116, N'4', 107, N'488-85-9230', N'Economy', N'Pending', 125.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (413, 184, N'20', 89, N'160-84-7396', N'Business', N'Completed', 187.18)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (414, 85, N'17', 54, N'688-86-1432', N'First', N'Pending', 181.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (415, 36, N'24', 135, N'403-07-1878', N'Economy', N'Cancelled', 111.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (416, 190, N'11', 43, N'894-72-7302', N'Business', N'Completed', 158.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (417, 91, N'26', 24, N'198-62-2257', N'Economy', N'Completed', 48.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (418, 12, N'16', 78, N'604-23-7939', N'First', N'Pending', 186.18)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (419, 36, N'17', 18, N'378-86-8903', N'Business', N'Completed', 135.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (420, 70, N'16', 122, N'235-95-3174', N'First', N'Completed', 165.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (421, 109, N'12', 165, N'201-46-4454', N'Economy', N'Completed', 33.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (422, 97, N'2', 112, N'419-75-1036', N'Economy', N'Cancelled', 129.76)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (423, 1, N'21', 42, N'430-61-2447', N'Economy', N'Completed', 83.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (424, 125, N'22', 125, N'103-86-7216', N'First', N'Cancelled', 102.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (425, 128, N'28', 10, N'652-74-2199', N'Economy', N'Completed', 64.03)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (426, 163, N'3', 38, N'296-38-0846', N'First', N'Pending', 163.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (427, 151, N'7', 168, N'550-04-0149', N'Economy', N'Cancelled', 74.49)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (428, 192, N'9', 116, N'206-33-4509', N'First', N'Pending', 127.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (429, 141, N'11', 68, N'242-90-4199', N'First', N'Completed', 138.19)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (430, 97, N'16', 155, N'560-91-2490', N'Economy', N'Completed', 57.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (431, 21, N'18', 69, N'253-88-3454', N'Economy', N'Pending', 24.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (432, 24, N'30', 124, N'639-01-0491', N'Economy', N'Completed', 98.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (433, 11, N'25', 189, N'718-43-8028', N'Economy', N'Completed', 143.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (434, 19, N'12', 86, N'739-95-1653', N'Business', N'Cancelled', 109.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (435, 188, N'14', 108, N'730-48-6130', N'Economy', N'Cancelled', 68.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (436, 38, N'11', 39, N'390-73-1178', N'Economy', N'Completed', 70.03)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (437, 151, N'20', 200, N'798-90-1525', N'Economy', N'Completed', 93.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (438, 107, N'13', 135, N'466-47-3273', N'Economy', N'Completed', 84.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (439, 92, N'2', 113, N'654-84-2187', N'Economy', N'Completed', 88.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (440, 151, N'15', 36, N'314-95-6977', N'Business', N'Completed', 164.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (441, 70, N'21', 9, N'662-98-5510', N'Business', N'Pending', 193.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (442, 167, N'28', 198, N'604-67-6862', N'Business', N'Cancelled', 121.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (443, 76, N'26', 32, N'855-40-8041', N'Business', N'Pending', 190.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (444, 32, N'3', 76, N'291-79-1565', N'First', N'Pending', 192.19)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (445, 42, N'14', 46, N'328-04-7781', N'First', N'Cancelled', 165.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (446, 23, N'20', 83, N'767-71-6696', N'Business', N'Cancelled', 130.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (447, 50, N'30', 194, N'664-53-5130', N'First', N'Cancelled', 158.52)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (448, 78, N'25', 92, N'325-54-8521', N'First', N'Completed', 106.25)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (449, 126, N'24', 146, N'173-85-8336', N'Economy', N'Pending', 50.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (450, 199, N'27', 93, N'611-89-1672', N'Economy', N'Cancelled', 141.82)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (451, 8, N'18', 128, N'855-92-6977', N'First', N'Pending', 103.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (452, 142, N'16', 93, N'199-15-2697', N'Economy', N'Pending', 82.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (453, 45, N'11', 135, N'336-18-5515', N'Business', N'Completed', 178.46)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (454, 183, N'28', 32, N'112-15-5491', N'Business', N'Pending', 114.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (455, 121, N'8', 17, N'153-57-1439', N'First', N'Pending', 132.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (456, 148, N'21', 142, N'517-32-5414', N'Economy', N'Completed', 28.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (457, 183, N'5', 121, N'582-13-6291', N'First', N'Cancelled', 136.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (458, 49, N'26', 25, N'648-11-8515', N'First', N'Cancelled', 104.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (459, 61, N'4', 51, N'636-29-7100', N'Economy', N'Completed', 68.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (460, 140, N'24', 179, N'480-50-5291', N'Economy', N'Completed', 77.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (461, 160, N'4', 77, N'491-94-5514', N'First', N'Pending', 169.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (462, 108, N'23', 137, N'436-92-3908', N'Economy', N'Cancelled', 103.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (463, 147, N'22', 161, N'341-73-7066', N'Business', N'Completed', 159.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (464, 140, N'26', 75, N'404-42-3495', N'Economy', N'Completed', 34.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (465, 152, N'29', 180, N'476-09-0738', N'Business', N'Completed', 173.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (466, 11, N'24', 3, N'360-49-0069', N'Economy', N'Completed', 28.28)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (467, 189, N'7', 49, N'458-50-0165', N'Business', N'Completed', 156.63)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (468, 47, N'3', 97, N'588-65-8958', N'Economy', N'Completed', 149.68)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (469, 17, N'12', 200, N'769-27-6541', N'Economy', N'Completed', 60.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (470, 135, N'13', 141, N'880-49-0888', N'Economy', N'Completed', 57.01)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (471, 47, N'10', 29, N'876-94-3952', N'Economy', N'Completed', 41.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (472, 35, N'12', 26, N'717-90-2059', N'Economy', N'Completed', 58.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (473, 137, N'19', 83, N'585-65-3474', N'Economy', N'Completed', 76.11)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (474, 40, N'26', 111, N'852-10-7771', N'First', N'Completed', 157.59)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (475, 128, N'10', 155, N'739-59-8915', N'Economy', N'Completed', 122.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (476, 34, N'17', 140, N'237-82-8572', N'Business', N'Completed', 177.65)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (477, 107, N'28', 92, N'463-30-4348', N'Business', N'Cancelled', 171.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (478, 168, N'4', 17, N'678-89-9657', N'First', N'Completed', 126.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (479, 28, N'29', 85, N'392-99-2425', N'Economy', N'Completed', 47.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (480, 182, N'27', 176, N'221-33-2002', N'First', N'Pending', 127.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (481, 152, N'18', 52, N'804-80-8408', N'Economy', N'Pending', 39.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (482, 198, N'20', 12, N'839-77-5384', N'Economy', N'Completed', 41.65)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (483, 165, N'14', 195, N'435-72-1184', N'Business', N'Cancelled', 197.01)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (484, 171, N'22', 107, N'635-45-3384', N'Business', N'Completed', 155.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (485, 173, N'29', 108, N'492-35-3098', N'Economy', N'Completed', 23.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (486, 144, N'27', 84, N'194-22-5577', N'Economy', N'Completed', 56.84)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (487, 93, N'16', 161, N'339-01-1810', N'Economy', N'Completed', 61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (488, 111, N'18', 35, N'572-66-2082', N'Economy', N'Completed', 89.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (489, 177, N'27', 163, N'781-89-5434', N'Economy', N'Completed', 29.13)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (490, 62, N'27', 163, N'124-05-8903', N'First', N'Pending', 112.22)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (491, 198, N'5', 174, N'207-09-9876', N'Economy', N'Completed', 70.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (492, 132, N'11', 8, N'624-12-1242', N'Economy', N'Cancelled', 48.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (493, 185, N'26', 76, N'357-50-7463', N'Economy', N'Completed', 117.63)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (494, 64, N'1', 134, N'391-69-2752', N'Economy', N'Completed', 90.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (495, 124, N'25', 36, N'192-20-4527', N'Economy', N'Completed', 125.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (496, 109, N'8', 176, N'180-41-6852', N'Economy', N'Completed', 133.49)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (497, 9, N'6', 122, N'613-36-1598', N'Economy', N'Completed', 149.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (498, 58, N'30', 79, N'276-97-3448', N'Economy', N'Completed', 56.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (499, 89, N'16', 84, N'519-67-5274', N'Economy', N'Completed', 65.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (500, 11, N'9', 110, N'487-24-8600', N'Business', N'Cancelled', 138.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (501, 47, N'5', 180, N'834-14-5116', N'Economy', N'Completed', 73.9)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (502, 112, N'13', 78, N'495-92-8252', N'Economy', N'Completed', 91.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (503, 175, N'6', 162, N'742-12-7070', N'First', N'Completed', 155.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (504, 2, N'12', 130, N'388-64-9730', N'First', N'Completed', 117.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (505, 170, N'30', 106, N'205-94-5481', N'Economy', N'Completed', 97.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (506, 30, N'20', 147, N'351-91-7746', N'Economy', N'Completed', 93.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (507, 143, N'30', 38, N'293-15-9057', N'Business', N'Cancelled', 186.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (508, 81, N'1', 8, N'706-96-1829', N'Business', N'Cancelled', 163.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (509, 15, N'22', 108, N'422-15-9152', N'Business', N'Completed', 174.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (510, 7, N'1', 130, N'583-79-6723', N'First', N'Cancelled', 100.25)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (511, 168, N'19', 54, N'441-11-1783', N'Business', N'Completed', 169.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (512, 143, N'21', 176, N'623-30-6719', N'First', N'Completed', 158.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (513, 184, N'23', 51, N'539-92-1680', N'Economy', N'Completed', 70.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (514, 6, N'25', 57, N'465-49-2689', N'Economy', N'Completed', 115.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (515, 171, N'5', 45, N'434-95-9290', N'Business', N'Completed', 192.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (516, 135, N'21', 115, N'723-90-1650', N'Business', N'Pending', 126.67)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (517, 148, N'17', 191, N'384-34-0812', N'Economy', N'Cancelled', 71.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (518, 10, N'5', 55, N'426-30-1936', N'Economy', N'Completed', 41.92)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (519, 97, N'1', 141, N'392-29-6688', N'First', N'Completed', 186.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (520, 77, N'26', 104, N'205-48-5057', N'Business', N'Completed', 113.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (521, 191, N'8', 126, N'393-20-0961', N'Economy', N'Completed', 47.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (522, 72, N'25', 60, N'504-68-7517', N'Economy', N'Pending', 140.82)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (523, 143, N'20', 145, N'655-59-8021', N'First', N'Cancelled', 133.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (524, 74, N'25', 55, N'748-78-2352', N'Business', N'Completed', 156.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (525, 17, N'9', 149, N'214-27-6879', N'Business', N'Completed', 165.67)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (526, 47, N'19', 182, N'664-85-9599', N'Business', N'Pending', 156.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (527, 148, N'11', 180, N'412-87-5536', N'Business', N'Pending', 192.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (528, 143, N'27', 165, N'792-59-0763', N'Economy', N'Cancelled', 46.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (529, 143, N'18', 3, N'586-84-2382', N'Economy', N'Pending', 82.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (530, 187, N'6', 38, N'165-42-2800', N'First', N'Cancelled', 193.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (531, 70, N'5', 167, N'510-39-2005', N'Economy', N'Completed', 89.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (532, 99, N'30', 51, N'414-49-7409', N'Economy', N'Completed', 66.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (533, 47, N'5', 139, N'642-79-8446', N'Economy', N'Pending', 95.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (534, 34, N'24', 106, N'752-65-3335', N'Economy', N'Cancelled', 138.9)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (535, 99, N'1', 120, N'537-79-0449', N'Economy', N'Pending', 30.18)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (536, 170, N'25', 50, N'558-13-2194', N'Economy', N'Cancelled', 142.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (537, 135, N'17', 171, N'468-15-3586', N'Economy', N'Completed', 66.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (538, 56, N'26', 55, N'134-37-6011', N'Economy', N'Cancelled', 66.65)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (539, 197, N'8', 16, N'607-22-4694', N'Economy', N'Completed', 63.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (540, 32, N'4', 187, N'833-81-5582', N'Economy', N'Completed', 93.59)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (541, 127, N'12', 83, N'693-46-4268', N'Economy', N'Completed', 28.84)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (542, 73, N'8', 172, N'219-76-6162', N'Economy', N'Completed', 50.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (543, 124, N'29', 171, N'557-61-5149', N'Business', N'Completed', 172.67)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (544, 26, N'19', 30, N'662-72-1161', N'Economy', N'Completed', 77.71)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (545, 140, N'13', 31, N'559-74-6507', N'Business', N'Pending', 162.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (546, 83, N'10', 200, N'263-97-6471', N'Economy', N'Completed', 53.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (547, 51, N'23', 48, N'169-81-5165', N'Economy', N'Pending', 44.22)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (548, 27, N'23', 39, N'430-28-3580', N'First', N'Completed', 180.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (549, 26, N'18', 8, N'323-39-0553', N'Economy', N'Completed', 73.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (550, 162, N'17', 73, N'157-02-4602', N'Economy', N'Pending', 94.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (551, 13, N'27', 135, N'148-14-3834', N'Business', N'Completed', 121.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (552, 74, N'15', 149, N'609-81-3898', N'Business', N'Cancelled', 174.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (553, 50, N'25', 37, N'881-77-5876', N'Economy', N'Pending', 88.19)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (554, 130, N'17', 8, N'126-38-3593', N'Economy', N'Completed', 89.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (555, 139, N'16', 120, N'731-27-3071', N'Economy', N'Cancelled', 100.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (556, 133, N'23', 140, N'388-48-5658', N'Business', N'Completed', 164.13)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (557, 85, N'1', 123, N'265-69-8956', N'Economy', N'Completed', 68.84)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (558, 100, N'11', 197, N'573-93-6066', N'Economy', N'Completed', 78.58)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (559, 128, N'10', 193, N'328-36-8994', N'Economy', N'Completed', 58.64)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (560, 198, N'20', 9, N'327-92-9393', N'Economy', N'Completed', 21.13)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (561, 118, N'18', 94, N'658-06-5254', N'Business', N'Pending', 171.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (562, 176, N'25', 137, N'741-92-2221', N'Economy', N'Completed', 67.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (563, 124, N'27', 156, N'685-06-3287', N'Economy', N'Completed', 95.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (564, 4, N'30', 182, N'251-22-0814', N'Economy', N'Cancelled', 120.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (565, 132, N'4', 137, N'567-97-0091', N'First', N'Pending', 120.15)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (566, 183, N'12', 35, N'475-10-3145', N'Economy', N'Completed', 136.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (567, 13, N'10', 26, N'852-39-6040', N'Economy', N'Completed', 36.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (568, 191, N'10', 11, N'618-26-5075', N'Economy', N'Completed', 76.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (569, 120, N'2', 65, N'295-69-7567', N'First', N'Completed', 102.28)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (570, 106, N'23', 65, N'678-60-2334', N'Economy', N'Completed', 76.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (571, 49, N'2', 163, N'765-02-1489', N'Economy', N'Completed', 26.19)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (572, 17, N'15', 125, N'150-12-7256', N'Economy', N'Pending', 88.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (573, 94, N'15', 98, N'540-67-0896', N'Economy', N'Completed', 68.57)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (574, 187, N'23', 3, N'264-40-9930', N'Business', N'Cancelled', 194.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (575, 92, N'2', 100, N'715-53-3653', N'Economy', N'Completed', 122.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (576, 5, N'15', 120, N'242-20-3495', N'Economy', N'Completed', 49.98)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (577, 182, N'15', 39, N'254-71-7384', N'Business', N'Completed', 183.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (578, 175, N'30', 177, N'522-43-3421', N'Economy', N'Pending', 50.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (579, 19, N'17', 171, N'858-72-8253', N'Economy', N'Cancelled', 123.42)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (580, 89, N'15', 136, N'407-53-3392', N'Economy', N'Completed', 25.17)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (581, 65, N'9', 109, N'402-95-5864', N'Business', N'Pending', 109.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (582, 103, N'2', 50, N'870-98-8312', N'First', N'Completed', 149.44)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (583, 11, N'10', 55, N'291-42-3514', N'First', N'Cancelled', 123.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (584, 80, N'25', 128, N'668-27-0579', N'First', N'Pending', 147.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (585, 48, N'19', 184, N'850-19-7638', N'First', N'Cancelled', 148.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (586, 48, N'14', 30, N'523-42-8037', N'Economy', N'Completed', 75.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (587, 162, N'27', 117, N'537-89-6297', N'Business', N'Completed', 169.67)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (588, 156, N'6', 8, N'278-01-3681', N'First', N'Pending', 199.18)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (589, 44, N'4', 77, N'163-71-4210', N'Economy', N'Completed', 89.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (590, 70, N'29', 88, N'388-76-7927', N'Business', N'Completed', 175.28)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (591, 86, N'28', 130, N'158-14-7776', N'Economy', N'Completed', 35.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (592, 148, N'29', 173, N'579-49-1211', N'Economy', N'Completed', 95.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (593, 15, N'20', 66, N'372-16-2528', N'First', N'Pending', 140.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (594, 102, N'30', 179, N'236-47-0116', N'Economy', N'Completed', 71.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (595, 81, N'5', 40, N'658-67-2086', N'Business', N'Pending', 134.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (596, 9, N'29', 114, N'858-45-6616', N'Economy', N'Completed', 22.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (597, 25, N'24', 153, N'831-20-6924', N'Business', N'Completed', 152.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (598, 158, N'23', 138, N'585-86-4259', N'Business', N'Completed', 183.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (599, 102, N'11', 152, N'760-75-8740', N'Economy', N'Completed', 30.13)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (600, 65, N'19', 73, N'396-19-0971', N'First', N'Completed', 114.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (601, 141, N'19', 192, N'458-55-9711', N'Economy', N'Cancelled', 90.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (602, 110, N'20', 11, N'862-77-3723', N'Economy', N'Completed', 87.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (603, 54, N'22', 166, N'840-47-1984', N'Economy', N'Cancelled', 74.36)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (604, 52, N'14', 195, N'765-89-0025', N'Economy', N'Completed', 20.44)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (605, 195, N'24', 10, N'309-12-4818', N'Business', N'Pending', 181.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (606, 122, N'26', 89, N'372-78-1579', N'Business', N'Completed', 171.52)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (607, 60, N'17', 66, N'112-31-9209', N'Business', N'Completed', 196.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (608, 7, N'30', 165, N'149-80-5592', N'Economy', N'Completed', 51.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (609, 47, N'7', 28, N'635-05-4036', N'Business', N'Completed', 160.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (610, 16, N'13', 40, N'520-37-7715', N'Economy', N'Completed', 45.86)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (611, 161, N'28', 191, N'547-28-0681', N'Economy', N'Cancelled', 97.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (612, 161, N'22', 115, N'375-85-6648', N'Economy', N'Completed', 69.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (613, 17, N'18', 6, N'645-61-5920', N'Economy', N'Completed', 79.01)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (614, 151, N'18', 193, N'470-42-2740', N'Economy', N'Completed', 52.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (615, 93, N'21', 176, N'706-02-7798', N'Economy', N'Completed', 117.92)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (616, 177, N'17', 39, N'892-75-1719', N'Economy', N'Completed', 58.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (617, 170, N'3', 37, N'195-30-4015', N'Economy', N'Pending', 127.03)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (618, 186, N'18', 90, N'187-88-4897', N'Economy', N'Completed', 72.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (619, 171, N'26', 58, N'243-30-3350', N'Business', N'Completed', 153.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (620, 85, N'14', 75, N'504-42-9700', N'First', N'Pending', 125.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (621, 156, N'6', 83, N'123-14-1159', N'Business', N'Completed', 158.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (622, 180, N'21', 49, N'305-16-5011', N'Economy', N'Cancelled', 97.63)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (623, 75, N'21', 128, N'206-55-3539', N'Economy', N'Pending', 38.17)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (624, 116, N'30', 149, N'776-70-2103', N'First', N'Pending', 118.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (625, 64, N'1', 99, N'455-47-4433', N'Business', N'Cancelled', 167.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (626, 133, N'3', 188, N'699-74-0374', N'Economy', N'Completed', 69.11)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (627, 142, N'7', 74, N'278-70-7587', N'Economy', N'Pending', 21.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (628, 103, N'10', 159, N'740-18-3870', N'Business', N'Pending', 199.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (629, 173, N'3', 35, N'582-31-8440', N'Economy', N'Completed', 57.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (630, 118, N'28', 151, N'754-43-3748', N'Economy', N'Completed', 76.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (631, 198, N'18', 197, N'388-41-4531', N'Economy', N'Completed', 82.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (632, 72, N'17', 105, N'590-38-6761', N'Economy', N'Completed', 82.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (633, 151, N'6', 162, N'683-23-5047', N'Economy', N'Completed', 64.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (634, 31, N'16', 188, N'695-15-0885', N'Business', N'Completed', 174.04)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (635, 175, N'25', 10, N'121-05-2794', N'Economy', N'Pending', 139.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (636, 116, N'24', 150, N'275-27-4223', N'Economy', N'Completed', 40.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (637, 22, N'10', 13, N'211-56-4502', N'Economy', N'Completed', 122.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (638, 16, N'2', 33, N'355-11-4747', N'Business', N'Completed', 113.17)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (639, 25, N'21', 38, N'328-97-0273', N'First', N'Pending', 157.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (640, 28, N'23', 168, N'652-77-7301', N'Economy', N'Completed', 70.11)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (641, 21, N'9', 168, N'673-23-4371', N'Economy', N'Pending', 105.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (642, 196, N'19', 145, N'147-37-3304', N'Business', N'Cancelled', 183.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (643, 151, N'20', 48, N'204-74-5812', N'Economy', N'Completed', 49.15)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (644, 133, N'9', 78, N'175-91-8485', N'Business', N'Pending', 192.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (645, 187, N'28', 148, N'741-80-2425', N'Economy', N'Completed', 49.9)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (646, 35, N'6', 11, N'550-32-9067', N'First', N'Completed', 167.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (647, 105, N'24', 153, N'338-28-2579', N'Economy', N'Cancelled', 133.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (648, 36, N'19', 114, N'531-46-7891', N'Economy', N'Completed', 83.62)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (649, 69, N'9', 75, N'527-99-6671', N'First', N'Completed', 135.42)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (650, 128, N'6', 7, N'241-56-4834', N'Business', N'Completed', 142.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (651, 138, N'26', 181, N'106-67-3280', N'Economy', N'Completed', 51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (652, 31, N'12', 50, N'855-87-1950', N'Economy', N'Completed', 85.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (653, 187, N'26', 141, N'616-85-8702', N'Economy', N'Pending', 107.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (654, 49, N'11', 111, N'521-68-7198', N'Economy', N'Pending', 29.43)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (655, 117, N'29', 162, N'759-72-4318', N'Business', N'Cancelled', 155.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (656, 46, N'27', 119, N'221-02-3001', N'Business', N'Completed', 168.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (657, 167, N'14', 133, N'399-54-4724', N'First', N'Pending', 128.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (658, 17, N'1', 71, N'825-43-7458', N'Business', N'Cancelled', 137.44)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (659, 131, N'27', 122, N'859-22-5857', N'Economy', N'Completed', 72.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (660, 22, N'27', 188, N'403-63-1857', N'Business', N'Cancelled', 128.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (661, 174, N'7', 122, N'698-12-5284', N'First', N'Completed', 108.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (662, 152, N'12', 20, N'339-88-9281', N'Economy', N'Completed', 90.65)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (663, 168, N'20', 94, N'246-21-7109', N'First', N'Completed', 181.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (664, 177, N'16', 116, N'615-13-4675', N'Economy', N'Completed', 97.09)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (665, 148, N'19', 137, N'154-06-7246', N'Economy', N'Completed', 60.43)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (666, 3, N'3', 79, N'544-96-8073', N'Economy', N'Cancelled', 76.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (667, 158, N'24', 177, N'504-61-6476', N'Business', N'Completed', 116.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (668, 112, N'7', 49, N'622-33-4890', N'Business', N'Pending', 131.86)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (669, 129, N'6', 39, N'602-08-5982', N'Economy', N'Completed', 49.32)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (670, 17, N'1', 100, N'789-28-0011', N'Economy', N'Completed', 77.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (671, 100, N'27', 97, N'773-98-6888', N'Business', N'Completed', 155.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (672, 95, N'25', 148, N'379-52-5282', N'Economy', N'Pending', 115.11)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (673, 161, N'16', 74, N'556-92-2696', N'Economy', N'Completed', 32.44)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (674, 88, N'4', 79, N'179-57-6914', N'Economy', N'Completed', 72.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (675, 104, N'17', 169, N'302-48-5568', N'Economy', N'Completed', 94.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (676, 121, N'20', 70, N'863-49-5299', N'Economy', N'Cancelled', 87.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (677, 41, N'29', 25, N'866-58-6966', N'First', N'Cancelled', 133.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (678, 150, N'16', 24, N'739-67-5884', N'Business', N'Completed', 180.64)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (679, 190, N'3', 21, N'784-08-5017', N'Economy', N'Completed', 96.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (680, 125, N'22', 174, N'322-47-0420', N'Economy', N'Completed', 75.49)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (681, 94, N'9', 48, N'824-27-6872', N'Economy', N'Completed', 58.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (682, 155, N'25', 113, N'776-79-5070', N'Economy', N'Pending', 65.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (683, 173, N'27', 40, N'875-75-1744', N'Business', N'Cancelled', 104.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (684, 52, N'27', 37, N'163-14-1218', N'Business', N'Completed', 154.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (685, 138, N'18', 59, N'886-57-1702', N'Economy', N'Completed', 88.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (686, 155, N'11', 175, N'263-41-3659', N'Business', N'Cancelled', 190.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (687, 147, N'11', 43, N'754-13-8990', N'First', N'Pending', 125.19)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (688, 186, N'3', 97, N'837-65-7183', N'First', N'Completed', 149.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (689, 124, N'13', 113, N'859-17-2824', N'First', N'Cancelled', 122.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (690, 36, N'27', 144, N'400-53-9237', N'Economy', N'Completed', 82.59)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (691, 171, N'20', 61, N'593-28-6574', N'Economy', N'Completed', 123.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (692, 3, N'9', 170, N'749-94-1363', N'Economy', N'Cancelled', 62.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (693, 48, N'4', 18, N'572-16-6224', N'First', N'Pending', 199.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (694, 18, N'27', 119, N'810-35-0810', N'Economy', N'Completed', 90.98)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (695, 136, N'25', 133, N'599-30-9814', N'Economy', N'Completed', 68.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (696, 141, N'30', 27, N'701-57-9685', N'Business', N'Cancelled', 104.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (697, 104, N'13', 194, N'608-98-5714', N'Economy', N'Cancelled', 118.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (698, 138, N'8', 20, N'616-72-9765', N'Economy', N'Completed', 83.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (699, 138, N'20', 54, N'647-11-0835', N'First', N'Pending', 130.91)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (700, 96, N'28', 78, N'510-63-2673', N'Economy', N'Completed', 61.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (701, 59, N'1', 160, N'135-64-9038', N'Economy', N'Cancelled', 118.82)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (702, 15, N'14', 155, N'278-60-0698', N'Business', N'Completed', 187.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (703, 97, N'27', 48, N'219-54-1987', N'Economy', N'Completed', 91.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (704, 110, N'13', 47, N'834-84-9438', N'Economy', N'Pending', 140.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (705, 158, N'30', 6, N'179-69-7832', N'Economy', N'Completed', 70.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (706, 3, N'12', 171, N'637-84-3424', N'Economy', N'Cancelled', 70.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (707, 147, N'7', 8, N'275-57-5495', N'Business', N'Pending', 118.41)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (708, 101, N'12', 138, N'429-28-8296', N'Business', N'Pending', 189.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (709, 130, N'6', 54, N'431-57-4249', N'Economy', N'Cancelled', 129.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (710, 88, N'25', 45, N'897-47-4494', N'First', N'Pending', 193.58)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (711, 69, N'27', 90, N'836-47-0008', N'Economy', N'Completed', 66.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (712, 130, N'3', 165, N'434-49-0811', N'Business', N'Completed', 196.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (713, 116, N'24', 83, N'137-02-7240', N'Economy', N'Completed', 57.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (714, 34, N'14', 45, N'293-18-6264', N'Economy', N'Cancelled', 78.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (715, 164, N'13', 136, N'543-13-7418', N'Economy', N'Completed', 49.18)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (716, 193, N'19', 21, N'296-98-9497', N'First', N'Cancelled', 192.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (717, 172, N'20', 151, N'264-18-0829', N'Economy', N'Pending', 98.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (718, 181, N'12', 19, N'831-53-9464', N'Business', N'Cancelled', 187.17)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (719, 142, N'10', 122, N'817-68-5944', N'Business', N'Completed', 167.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (720, 168, N'10', 89, N'519-12-2160', N'Business', N'Completed', 159.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (721, 107, N'1', 149, N'398-37-9017', N'Business', N'Completed', 174.49)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (722, 113, N'12', 188, N'467-23-4515', N'Economy', N'Cancelled', 25.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (723, 70, N'30', 166, N'203-12-5620', N'Economy', N'Completed', 31.52)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (724, 19, N'13', 1, N'502-24-3817', N'Economy', N'Pending', 140.76)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (725, 196, N'19', 62, N'310-54-0668', N'Economy', N'Completed', 88.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (726, 135, N'5', 42, N'260-20-5274', N'First', N'Pending', 179.52)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (727, 86, N'11', 38, N'587-40-7831', N'Business', N'Cancelled', 195.28)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (728, 181, N'27', 20, N'337-02-5443', N'Economy', N'Completed', 116.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (729, 129, N'12', 141, N'787-61-2913', N'Economy', N'Completed', 70.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (730, 140, N'7', 5, N'705-54-2815', N'Economy', N'Completed', 42.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (731, 82, N'8', 151, N'330-21-4247', N'Economy', N'Completed', 21.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (732, 195, N'6', 21, N'498-21-9402', N'Economy', N'Completed', 62.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (733, 185, N'16', 135, N'130-20-5109', N'Business', N'Completed', 167.52)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (734, 48, N'26', 52, N'568-83-8836', N'First', N'Completed', 140.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (735, 133, N'27', 44, N'704-36-0211', N'Business', N'Cancelled', 190.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (736, 192, N'15', 47, N'372-59-2200', N'First', N'Completed', 148.46)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (737, 80, N'20', 31, N'279-23-9028', N'Business', N'Completed', 109.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (738, 146, N'15', 179, N'654-85-2189', N'Business', N'Cancelled', 118.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (739, 84, N'20', 128, N'364-12-3161', N'Economy', N'Completed', 84.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (740, 96, N'25', 57, N'173-72-0417', N'Economy', N'Completed', 56.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (741, 142, N'21', 154, N'154-80-7450', N'Economy', N'Completed', 61.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (742, 78, N'28', 171, N'844-74-4083', N'Business', N'Completed', 161.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (743, 64, N'25', 21, N'591-59-0983', N'Economy', N'Completed', 33.46)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (744, 150, N'14', 134, N'212-93-5466', N'Business', N'Completed', 158.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (745, 191, N'25', 185, N'462-23-8848', N'First', N'Pending', 169.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (746, 74, N'21', 196, N'525-47-9436', N'First', N'Completed', 139.86)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (747, 158, N'21', 45, N'377-45-9742', N'Economy', N'Pending', 87.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (748, 19, N'27', 80, N'442-47-0455', N'Economy', N'Completed', 104.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (749, 82, N'2', 41, N'768-56-9784', N'Economy', N'Completed', 71.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (750, 122, N'4', 40, N'143-45-0362', N'Economy', N'Completed', 88.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (751, 73, N'22', 113, N'812-60-4480', N'Business', N'Completed', 171.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (752, 179, N'30', 156, N'499-27-2687', N'Business', N'Cancelled', 172.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (753, 39, N'8', 97, N'296-68-9718', N'Economy', N'Cancelled', 45.03)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (754, 27, N'17', 135, N'549-40-6287', N'Business', N'Pending', 149.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (755, 25, N'18', 184, N'715-67-8185', N'Business', N'Cancelled', 158.86)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (756, 194, N'6', 49, N'158-92-5482', N'First', N'Pending', 128.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (757, 134, N'17', 142, N'408-21-9564', N'First', N'Cancelled', 116.04)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (758, 85, N'18', 122, N'254-20-7646', N'Business', N'Completed', 165.68)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (759, 23, N'7', 100, N'354-87-0202', N'Economy', N'Completed', 85.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (760, 44, N'1', 72, N'425-31-8454', N'First', N'Pending', 109.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (761, 30, N'10', 101, N'739-21-0641', N'First', N'Cancelled', 151.67)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (762, 88, N'28', 39, N'576-90-5209', N'Business', N'Completed', 176.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (763, 30, N'15', 105, N'421-92-1602', N'Economy', N'Completed', 75.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (764, 102, N'4', 164, N'149-23-1042', N'Economy', N'Completed', 90.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (765, 45, N'24', 26, N'863-07-8241', N'Business', N'Cancelled', 181.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (766, 181, N'13', 6, N'252-58-6891', N'Economy', N'Cancelled', 98.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (767, 109, N'21', 84, N'451-06-2806', N'Economy', N'Completed', 89.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (768, 6, N'4', 33, N'238-63-6198', N'First', N'Completed', 171.36)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (769, 30, N'7', 153, N'336-79-5163', N'Economy', N'Pending', 131.03)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (770, 89, N'12', 146, N'759-77-8728', N'Economy', N'Completed', 92.84)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (771, 50, N'16', 113, N'366-17-4718', N'Business', N'Pending', 174.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (772, 73, N'11', 99, N'645-38-8162', N'Economy', N'Completed', 58.44)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (773, 169, N'12', 65, N'373-31-4269', N'Business', N'Pending', 158.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (774, 105, N'15', 28, N'296-72-3307', N'First', N'Completed', 141)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (775, 128, N'21', 182, N'413-42-4241', N'Business', N'Completed', 180.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (776, 126, N'16', 32, N'467-19-7073', N'Economy', N'Cancelled', 78.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (777, 125, N'27', 196, N'640-42-9314', N'Business', N'Pending', 137.19)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (778, 151, N'29', 108, N'335-61-3156', N'Business', N'Completed', 124.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (779, 36, N'21', 142, N'686-13-4438', N'Economy', N'Pending', 137.42)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (780, 126, N'28', 97, N'861-36-9393', N'Business', N'Completed', 158.44)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (781, 23, N'11', 41, N'486-24-4274', N'Business', N'Pending', 164.19)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (782, 186, N'2', 61, N'567-79-8702', N'Economy', N'Pending', 82.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (783, 2, N'28', 129, N'619-67-5363', N'First', N'Cancelled', 153.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (784, 6, N'15', 31, N'794-42-1402', N'Business', N'Pending', 115.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (785, 103, N'21', 81, N'589-15-7745', N'Business', N'Completed', 127.04)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (786, 47, N'14', 57, N'533-32-5680', N'Business', N'Cancelled', 167.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (787, 178, N'2', 51, N'459-31-6960', N'Business', N'Pending', 156.67)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (788, 52, N'25', 189, N'458-93-3482', N'Economy', N'Completed', 85.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (789, 200, N'28', 178, N'267-56-7567', N'Business', N'Completed', 171.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (790, 136, N'24', 28, N'572-72-0677', N'First', N'Pending', 102.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (791, 39, N'3', 183, N'340-03-0653', N'Business', N'Completed', 167.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (792, 37, N'15', 66, N'695-48-2586', N'Business', N'Pending', 107.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (793, 163, N'20', 187, N'749-07-4406', N'Economy', N'Completed', 95.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (794, 48, N'25', 81, N'241-40-8057', N'First', N'Cancelled', 199.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (795, 98, N'16', 14, N'735-63-6422', N'Economy', N'Pending', 50.36)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (796, 89, N'18', 154, N'749-05-2448', N'Economy', N'Completed', 67.26)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (797, 3, N'22', 76, N'281-03-5355', N'Business', N'Pending', 118.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (798, 93, N'12', 194, N'811-49-4801', N'Economy', N'Completed', 84.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (799, 44, N'13', 50, N'872-63-4638', N'Economy', N'Cancelled', 116.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (800, 64, N'16', 70, N'380-45-1825', N'Economy', N'Completed', 144.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (801, 26, N'16', 78, N'376-78-8309', N'Economy', N'Completed', 23.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (802, 93, N'17', 42, N'127-99-7470', N'First', N'Pending', 102.04)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (803, 158, N'24', 76, N'220-12-5090', N'Economy', N'Completed', 145.28)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (804, 70, N'10', 10, N'271-25-1322', N'Economy', N'Pending', 135.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (805, 49, N'3', 119, N'665-27-6737', N'Economy', N'Completed', 89.11)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (806, 159, N'2', 170, N'728-89-6058', N'Business', N'Cancelled', 176.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (807, 7, N'29', 169, N'404-15-2349', N'Business', N'Completed', 142.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (808, 76, N'28', 20, N'281-18-1714', N'Economy', N'Completed', 79.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (809, 21, N'24', 13, N'760-73-0015', N'First', N'Cancelled', 120.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (810, 164, N'14', 28, N'445-81-2910', N'Economy', N'Cancelled', 84.28)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (811, 125, N'26', 29, N'684-54-9708', N'Business', N'Completed', 148.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (812, 30, N'10', 39, N'352-87-1519', N'Economy', N'Completed', 57.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (813, 144, N'4', 107, N'138-64-3953', N'Economy', N'Pending', 52.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (814, 200, N'18', 121, N'784-24-5709', N'Economy', N'Completed', 87.9)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (815, 88, N'13', 136, N'162-89-0773', N'Economy', N'Completed', 73.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (816, 171, N'1', 100, N'529-36-0679', N'Business', N'Pending', 190.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (817, 50, N'19', 162, N'702-84-3716', N'First', N'Pending', 196.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (818, 190, N'10', 16, N'501-76-2296', N'Business', N'Completed', 151.23)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (819, 61, N'2', 99, N'754-83-3167', N'Economy', N'Completed', 35.46)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (820, 128, N'28', 182, N'275-15-4098', N'Business', N'Cancelled', 143.69)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (821, 91, N'3', 140, N'469-10-4680', N'Economy', N'Pending', 79.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (822, 194, N'28', 12, N'715-53-0002', N'Business', N'Pending', 130.6)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (823, 92, N'1', 190, N'486-41-9372', N'Economy', N'Pending', 139.86)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (824, 128, N'27', 25, N'290-72-2463', N'Economy', N'Completed', 55.31)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (825, 92, N'4', 84, N'793-09-0073', N'Economy', N'Cancelled', 37.68)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (826, 30, N'13', 81, N'876-03-5277', N'Economy', N'Completed', 23.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (827, 24, N'11', 83, N'313-97-0648', N'Business', N'Cancelled', 189.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (828, 4, N'1', 116, N'442-47-7443', N'First', N'Completed', 179.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (829, 3, N'17', 126, N'860-10-3504', N'Economy', N'Cancelled', 126.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (830, 156, N'12', 58, N'887-76-0297', N'Economy', N'Pending', 45.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (831, 7, N'2', 21, N'839-05-2209', N'Economy', N'Completed', 29.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (832, 47, N'19', 57, N'440-89-6629', N'Economy', N'Completed', 43)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (833, 193, N'8', 49, N'823-38-1168', N'Business', N'Pending', 144.03)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (834, 54, N'17', 26, N'697-70-5587', N'Economy', N'Pending', 45.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (835, 98, N'4', 22, N'814-76-5085', N'Business', N'Completed', 178.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (836, 55, N'1', 14, N'184-77-7597', N'Economy', N'Cancelled', 82.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (837, 15, N'4', 100, N'758-40-0648', N'Economy', N'Completed', 93.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (838, 107, N'3', 151, N'632-50-0950', N'Economy', N'Completed', 64.26)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (839, 104, N'22', 143, N'706-45-1338', N'Economy', N'Completed', 94.06)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (840, 137, N'5', 94, N'298-45-6219', N'Economy', N'Cancelled', 91.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (841, 7, N'25', 153, N'823-68-5133', N'Business', N'Completed', 166.99)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (842, 29, N'25', 198, N'219-37-4342', N'Business', N'Cancelled', 174.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (843, 108, N'25', 130, N'380-65-0918', N'Economy', N'Completed', 85.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (844, 65, N'20', 69, N'787-32-6704', N'First', N'Cancelled', 113.71)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (845, 140, N'21', 130, N'327-51-6547', N'Economy', N'Completed', 81.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (846, 106, N'20', 33, N'858-55-7131', N'Economy', N'Completed', 93.65)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (847, 77, N'18', 121, N'189-66-6963', N'Business', N'Completed', 177.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (848, 25, N'7', 71, N'483-33-4852', N'Economy', N'Pending', 103.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (849, 172, N'22', 177, N'461-62-3164', N'Economy', N'Completed', 81.97)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (850, 85, N'1', 77, N'146-32-5946', N'Economy', N'Cancelled', 37.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (851, 157, N'25', 79, N'339-36-8621', N'Business', N'Completed', 153.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (852, 24, N'30', 6, N'751-61-2458', N'Economy', N'Completed', 29.92)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (853, 28, N'11', 199, N'503-41-3639', N'Economy', N'Completed', 24.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (854, 11, N'26', 5, N'810-67-2086', N'Economy', N'Completed', 40.22)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (855, 122, N'7', 141, N'185-56-7241', N'Economy', N'Completed', 88.1)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (856, 178, N'12', 66, N'217-39-4644', N'Economy', N'Completed', 99.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (857, 188, N'11', 176, N'565-20-1761', N'Business', N'Cancelled', 189.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (858, 81, N'2', 119, N'751-80-7734', N'Economy', N'Completed', 35.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (859, 196, N'10', 5, N'400-91-8876', N'Business', N'Completed', 166.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (860, 57, N'17', 156, N'212-69-5772', N'Business', N'Completed', 107.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (861, 173, N'6', 41, N'356-58-8902', N'Economy', N'Completed', 73.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (862, 62, N'11', 74, N'355-02-4702', N'Economy', N'Completed', 51.75)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (863, 26, N'24', 111, N'559-54-8443', N'Economy', N'Completed', 68.98)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (864, 42, N'15', 30, N'432-64-3332', N'Economy', N'Completed', 20.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (865, 81, N'5', 41, N'367-76-9021', N'First', N'Cancelled', 169.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (866, 124, N'21', 128, N'207-10-9180', N'Economy', N'Completed', 73.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (867, 182, N'4', 169, N'559-09-5292', N'Business', N'Cancelled', 175.39)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (868, 175, N'8', 164, N'583-58-7178', N'Economy', N'Completed', 139.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (869, 159, N'24', 146, N'734-07-7493', N'Economy', N'Completed', 85.04)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (870, 134, N'21', 71, N'391-15-4017', N'Business', N'Completed', 196.12)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (871, 72, N'12', 74, N'577-15-4952', N'Economy', N'Pending', 60.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (872, 110, N'21', 165, N'391-57-9376', N'Economy', N'Completed', 29.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (873, 198, N'20', 19, N'164-96-8801', N'Economy', N'Cancelled', 27.24)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (874, 92, N'11', 168, N'855-85-2746', N'Business', N'Cancelled', 135.01)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (875, 187, N'2', 85, N'183-74-5551', N'First', N'Pending', 133)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (876, 61, N'25', 85, N'501-83-4806', N'Business', N'Completed', 193.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (877, 5, N'20', 184, N'394-85-3130', N'Business', N'Completed', 170.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (878, 9, N'1', 145, N'714-89-7061', N'Economy', N'Pending', 69.65)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (879, 127, N'8', 84, N'142-63-6822', N'Economy', N'Completed', 129.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (880, 28, N'7', 166, N'633-31-7172', N'First', N'Cancelled', 147.07)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (881, 70, N'9', 118, N'361-31-2221', N'Economy', N'Completed', 54.7)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (882, 152, N'17', 63, N'254-30-2905', N'Economy', N'Pending', 61.01)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (883, 184, N'16', 102, N'573-63-2560', N'Economy', N'Completed', 60.84)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (884, 28, N'17', 188, N'258-45-9608', N'Economy', N'Completed', 77.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (885, 182, N'10', 51, N'697-85-4484', N'Business', N'Cancelled', 170.28)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (886, 74, N'3', 132, N'140-39-0251', N'Economy', N'Pending', 47.36)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (887, 153, N'29', 68, N'882-32-8018', N'Economy', N'Completed', 99.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (888, 176, N'21', 30, N'536-53-9852', N'Business', N'Completed', 168.15)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (889, 169, N'16', 37, N'729-85-5683', N'Business', N'Completed', 162.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (890, 41, N'15', 56, N'327-68-8164', N'Business', N'Completed', 152.78)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (891, 169, N'15', 179, N'177-81-6043', N'Economy', N'Completed', 28.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (892, 171, N'9', 152, N'843-49-4866', N'Business', N'Completed', 147.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (893, 187, N'8', 77, N'626-06-2129', N'Economy', N'Pending', 122.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (894, 41, N'3', 44, N'728-43-1650', N'Economy', N'Completed', 58.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (895, 14, N'26', 73, N'289-25-1863', N'First', N'Pending', 161.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (896, 65, N'16', 194, N'638-43-2928', N'Economy', N'Pending', 34.86)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (897, 32, N'14', 30, N'516-74-9621', N'First', N'Completed', 180.79)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (898, 17, N'9', 32, N'411-71-2025', N'Economy', N'Pending', 97.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (899, 163, N'1', 44, N'655-53-9783', N'Economy', N'Completed', 92.29)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (900, 38, N'2', 33, N'892-08-0021', N'Business', N'Cancelled', 197.08)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (901, 135, N'28', 109, N'113-87-1553', N'Business', N'Pending', 180.71)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (902, 165, N'24', 107, N'577-93-9633', N'Economy', N'Completed', 26.58)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (903, 30, N'6', 129, N'339-40-1476', N'Economy', N'Pending', 60.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (904, 200, N'9', 33, N'246-56-2870', N'Economy', N'Completed', 51.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (905, 43, N'28', 140, N'553-66-1796', N'Business', N'Completed', 190.66)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (906, 99, N'10', 178, N'112-20-4984', N'Business', N'Completed', 127.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (907, 139, N'27', 41, N'113-05-2126', N'Business', N'Pending', 104.42)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (908, 22, N'23', 40, N'520-10-2213', N'First', N'Cancelled', 151.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (909, 20, N'17', 61, N'674-76-6775', N'Economy', N'Completed', 43.95)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (910, 97, N'18', 90, N'779-51-1267', N'Business', N'Cancelled', 187.68)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (911, 8, N'12', 169, N'211-60-1269', N'Business', N'Completed', 147.28)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (912, 150, N'4', 33, N'771-64-3699', N'Economy', N'Pending', 94.86)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (913, 126, N'12', 175, N'496-64-3672', N'Business', N'Cancelled', 183.4)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (914, 94, N'15', 9, N'302-65-2204', N'First', N'Pending', 199.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (915, 31, N'29', 40, N'556-72-8708', N'Economy', N'Completed', 89.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (916, 180, N'22', 197, N'696-30-1495', N'Economy', N'Cancelled', 64.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (917, 45, N'17', 22, N'237-43-7997', N'Economy', N'Cancelled', 30.11)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (918, 169, N'8', 3, N'698-50-4647', N'Business', N'Pending', 153.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (919, 182, N'21', 87, N'849-37-9782', N'Economy', N'Completed', 62)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (920, 106, N'9', 151, N'774-57-5920', N'Economy', N'Cancelled', 25.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (921, 140, N'9', 200, N'113-83-2456', N'Economy', N'Completed', 64.94)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (922, 190, N'21', 178, N'401-62-8005', N'Economy', N'Pending', 107.87)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (923, 40, N'5', 100, N'237-65-7897', N'Economy', N'Completed', 108.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (924, 124, N'20', 89, N'279-96-1226', N'Economy', N'Completed', 133.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (925, 42, N'8', 155, N'449-58-6209', N'Business', N'Completed', 176.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (926, 128, N'4', 78, N'841-83-1291', N'Economy', N'Completed', 38.74)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (927, 21, N'19', 70, N'419-28-6108', N'First', N'Cancelled', 135.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (928, 172, N'6', 136, N'397-94-3881', N'Business', N'Completed', 164.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (929, 41, N'5', 110, N'244-16-6264', N'Economy', N'Completed', 89.02)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (930, 93, N'7', 88, N'339-40-0003', N'Business', N'Pending', 189.91)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (931, 26, N'11', 47, N'202-59-5444', N'Economy', N'Completed', 47.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (932, 1, N'22', 75, N'272-45-7860', N'Economy', N'Completed', 45.82)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (933, 6, N'18', 69, N'268-14-6256', N'Business', N'Completed', 178.44)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (934, 138, N'29', 121, N'802-82-4341', N'Economy', N'Completed', 75.86)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (935, 19, N'9', 36, N'366-82-7045', N'Economy', N'Completed', 32.57)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (936, 25, N'18', 86, N'766-01-5212', N'Economy', N'Completed', 149.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (937, 135, N'16', 62, N'360-47-9851', N'First', N'Cancelled', 142.13)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (938, 47, N'10', 68, N'105-15-0731', N'First', N'Pending', 180.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (939, 14, N'15', 198, N'343-05-2521', N'First', N'Completed', 160.8)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (940, 157, N'26', 9, N'748-85-2066', N'Economy', N'Pending', 66.25)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (941, 97, N'18', 66, N'585-10-8687', N'Economy', N'Cancelled', 70.68)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (942, 77, N'18', 175, N'733-73-9107', N'Economy', N'Pending', 66.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (943, 176, N'3', 51, N'807-33-0502', N'Economy', N'Completed', 71.34)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (944, 171, N'21', 91, N'549-67-7835', N'Economy', N'Pending', 104.88)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (945, 114, N'24', 140, N'852-46-1743', N'Business', N'Cancelled', 133.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (946, 61, N'14', 191, N'687-20-3115', N'Economy', N'Pending', 143.46)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (947, 190, N'21', 132, N'518-50-3219', N'Economy', N'Completed', 67.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (948, 127, N'28', 169, N'393-38-0521', N'Business', N'Pending', 158.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (949, 34, N'16', 141, N'713-50-6858', N'Economy', N'Completed', 89.26)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (950, 72, N'11', 33, N'216-75-8715', N'Business', N'Cancelled', 157.15)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (951, 151, N'28', 179, N'627-28-6734', N'Economy', N'Completed', 89.14)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (952, 127, N'26', 176, N'642-88-2597', N'First', N'Cancelled', 166.43)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (953, 50, N'8', 191, N'277-34-8636', N'Business', N'Pending', 192.93)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (954, 6, N'13', 5, N'346-27-0460', N'Business', N'Completed', 165.45)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (955, 149, N'10', 160, N'604-88-0826', N'Economy', N'Pending', 127.2)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (956, 77, N'25', 43, N'788-89-6365', N'Economy', N'Pending', 41.71)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (957, 198, N'16', 184, N'722-56-0974', N'Economy', N'Cancelled', 89.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (958, 13, N'20', 180, N'296-52-8789', N'Economy', N'Pending', 130.57)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (959, 173, N'25', 197, N'103-29-3926', N'Economy', N'Cancelled', 24.55)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (960, 41, N'5', 120, N'288-17-2897', N'Economy', N'Cancelled', 105.89)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (961, 175, N'1', 103, N'333-73-4827', N'First', N'Completed', 190.5)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (962, 117, N'21', 171, N'675-90-4949', N'Economy', N'Completed', 50.3)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (963, 167, N'12', 23, N'551-55-3812', N'Economy', N'Completed', 99.27)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (964, 36, N'29', 200, N'114-03-0835', N'Business', N'Completed', 176.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (965, 95, N'10', 164, N'270-97-3354', N'Economy', N'Cancelled', 119.47)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (966, 180, N'30', 136, N'697-99-6940', N'Economy', N'Completed', 40.84)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (967, 4, N'4', 61, N'317-67-5940', N'Business', N'Completed', 141)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (968, 75, N'2', 7, N'653-54-9511', N'Business', N'Completed', 129.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (969, 162, N'5', 74, N'864-59-2954', N'Economy', N'Completed', 67.61)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (970, 64, N'19', 169, N'395-10-7305', N'Business', N'Completed', 171.72)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (971, 168, N'15', 35, N'652-01-7100', N'First', N'Completed', 101.48)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (972, 123, N'3', 186, N'304-50-4486', N'Economy', N'Pending', 114.91)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (973, 170, N'7', 130, N'748-59-5362', N'Business', N'Completed', 114.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (974, 7, N'4', 98, N'767-80-1520', N'Economy', N'Pending', 96.91)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (975, 113, N'10', 109, N'237-81-2348', N'Economy', N'Completed', 97.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (976, 197, N'2', 105, N'382-17-2118', N'Economy', N'Completed', 79.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (977, 145, N'2', 168, N'630-85-1056', N'Economy', N'Completed', 24.21)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (978, 131, N'19', 7, N'348-88-2734', N'Economy', N'Cancelled', 97.85)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (979, 107, N'18', 150, N'835-03-1791', N'Business', N'Cancelled', 122.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (980, 190, N'18', 108, N'751-80-2771', N'Economy', N'Completed', 82.15)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (981, 188, N'23', 7, N'140-20-1500', N'Economy', N'Completed', 99.81)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (982, 162, N'13', 72, N'235-54-2550', N'Business', N'Pending', 178.16)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (983, 72, N'17', 198, N'754-50-8080', N'Economy', N'Completed', 48.35)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (984, 192, N'6', 176, N'593-77-9752', N'First', N'Pending', 172.37)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (985, 26, N'7', 118, N'307-48-8618', N'Business', N'Pending', 125)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (986, 35, N'24', 131, N'444-73-5293', N'Economy', N'Pending', 80.05)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (987, 154, N'19', 69, N'326-38-0281', N'Business', N'Completed', 103.33)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (988, 160, N'16', 116, N'653-40-9142', N'Economy', N'Completed', 48.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (989, 34, N'8', 119, N'335-02-9194', N'Economy', N'Completed', 92.73)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (990, 109, N'20', 64, N'800-88-3012', N'Economy', N'Completed', 57.83)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (991, 180, N'7', 33, N'842-48-6694', N'Economy', N'Completed', 36.49)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (992, 49, N'1', 15, N'847-98-0658', N'Economy', N'Cancelled', 91.54)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (993, 197, N'10', 87, N'471-46-0053', N'First', N'Completed', 160.84)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (994, 169, N'24', 32, N'569-03-3162', N'Business', N'Completed', 161.38)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (995, 37, N'2', 128, N'685-17-2723', N'Economy', N'Completed', 33.77)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (996, 153, N'15', 14, N'382-09-5221', N'Business', N'Cancelled', 154.96)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (997, 4, N'1', 175, N'607-94-7876', N'Economy', N'Completed', 26.26)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (998, 135, N'8', 72, N'874-04-5427', N'Business', N'Cancelled', 117.56)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (999, 170, N'11', 61, N'451-54-4626', N'Business', N'Completed', 126.51)
GO
INSERT [dbo].[Booking] ([BookingID], [PassengerID], [FlightNumber], [SeatNumber], [Baggage], [BookingClass], [BookingStatus], [PaymentAmount]) VALUES (1000, 38, N'27', 198, N'377-04-1889', N'Business', N'Pending', 187.81)
GO
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO


insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bobina', 'Queripel', '10/10/1999', 4, '232-733-6841', 'bqueripel0@dagondesign.com', '5209 Bluejay Avenue', null, 'Hengshi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Tallia', 'Bayfield', '04/16/2012', 3, '801-699-2215', 'tbayfield1@nba.com', '2 Melvin Way', '191049', 'Santander de Quilichao', null, 'Colombia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rudd', 'Wolfenden', '08/29/1968', 4, '220-159-6348', 'rwolfenden2@wufoo.com', '51 Northport Alley', null, 'Mojkovac', null, 'Montenegro');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Hilary', 'Harrowell', '11/24/1973', 3, '503-821-2729', 'hharrowell3@about.com', '65959 American Ash Circle', '97670-000', 'São Borja', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Arley', 'Zanardii', '11/04/1981', 2, '113-565-1570', 'azanardii4@auda.org.au', '03 Anzinger Lane', '7104', 'Manquiring', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Urbain', 'Storck', '03/31/1979', 3, '868-217-0253', 'ustorck5@accuweather.com', '7 Bobwhite Alley', '789 83', 'Loštice', null, 'Czech Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Samaria', 'Abbotson', '10/12/1989', 1, '550-349-3725', 'sabbotson6@gravatar.com', '9 Melby Parkway', null, 'Ankazondandy', null, 'Madagascar');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Tammie', 'Elecum', '01/28/2015', 1, '199-681-3705', 'telecum7@g.co', '39427 1st Trail', null, 'Jiaowei', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Aguie', 'Elves', '11/18/1968', 3, '442-704-3719', 'aelves8@ehow.com', '4197 Gateway Parkway', '46220', 'Nong Kung Si', null, 'Thailand');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ricardo', 'Bartoletti', '03/11/1962', 1, null, 'rbartoletti9@slate.com', '017 Carey Crossing', null, 'Ghanzi', null, 'Botswana');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Andonis', 'Laydel', '12/23/1989', 4, '721-994-0869', 'alaydela@technorati.com', '49 Rockefeller Avenue', '1235', 'Sydney South', 'New South Wales', 'Australia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Skylar', 'Schuchmacher', '01/24/1965', 3, '738-299-4110', 'sschuchmacherb@etsy.com', '5461 Mandrake Parkway', null, 'Nanzhihui', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Maryellen', 'Heditch', '07/13/1996', 3, null, 'mheditchc@patch.com', '65630 Cody Center', '401 24', 'Göteborg', 'Västra Götaland', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Colly', 'Pollicote', '08/10/1980', 2, '881-284-7574', 'cpollicoted@theguardian.com', '4 Stephen Drive', null, 'Dome', null, 'Ghana');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Terrel', 'Assante', '04/03/1981', 3, '738-252-2246', 'tassantee@moonfruit.com', '0 Waxwing Alley', '49250', 'Zlatar', null, 'Croatia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Marilin', 'Figgs', '01/10/2002', 2, '363-921-0955', 'mfiggsf@jiathis.com', '0 Pond Parkway', null, 'Thị Trấn Ngải Giao', null, 'Vietnam');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Carina', 'Marrion', '05/21/1975', 3, '129-699-6338', 'cmarriong@altervista.org', '67 Oxford Avenue', '65160', 'Lap Lae', null, 'Thailand');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Raimundo', 'Caccavale', '10/29/1983', 3, '940-713-3879', 'rcaccavaleh@tumblr.com', '3540 Gerald Center', null, 'Yangjiafang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Abigale', 'Bagguley', '12/27/1985', 2, '923-982-6412', 'abagguleyi@globo.com', '2161 Straubel Plaza', null, 'Sawahrandu', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Adolf', 'Wing', '10/13/2001', 1, '727-481-0521', 'awingj@umn.edu', '785 1st Drive', null, 'Pingshan', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Tedda', 'Flecknoe', '07/20/1993', 4, '605-598-5221', 'tflecknoek@uiuc.edu', '6921 Prentice Point', null, 'Dengmingsi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Norrie', 'Hamor', '04/22/1975', 2, '290-480-0772', 'nhamorl@washington.edu', '45 Waxwing Junction', null, 'Harar', null, 'Ethiopia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Florinda', 'Mellodey', '11/13/1998', 1, '602-212-3235', 'fmellodeym@ehow.com', '803 Cordelia Pass', '188855', 'Pervomayskoye', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Suzann', 'Clampin', '02/21/1963', 1, '836-175-8381', 'sclampinn@tiny.cc', '32315 Anhalt Pass', null, 'Dzyatlava', null, 'Belarus');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Clementius', 'Ogan', '11/12/1962', 1, '809-498-1668', null, '64590 Ramsey Center', '2914', 'Sula', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Christos', 'Gadie', '02/16/1965', 2, '953-111-4842', 'cgadiep@springer.com', '936 Sauthoff Trail', '2005', 'Santa Teresa First', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Alvin', 'Boyton', '05/12/1969', 2, '543-958-0924', 'aboytonq@mac.com', '37 Columbus Trail', null, 'Široki Brijeg', null, 'Bosnia and Herzegovina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Leora', 'Byrom', '11/10/2016', 4, '705-455-4523', 'lbyromr@twitpic.com', '61270 Vermont Hill', null, 'Xigou', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Koressa', 'Sessions', '06/03/2009', 3, '820-126-4651', 'ksessionss@tamu.edu', '9 Annamark Park', null, 'Kemendung', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Patty', 'Decayette', '04/01/1979', 4, '858-393-3177', 'pdecayettet@facebook.com', '104 Mallory Street', null, 'Idi Rayeuk', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bea', 'Franckton', '10/26/2006', 2, '913-743-5865', 'bfrancktonu@purevolume.com', '664 Dakota Trail', null, 'Klumbu', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Michaeline', 'M''Chirrie', '08/20/2017', 3, '501-745-0163', 'mmchirriev@kickstarter.com', '884 Sommers Circle', null, 'Kafr Şaqr', null, 'Egypt');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kathye', 'Phizacklea', '09/15/2011', 1, null, 'kphizackleaw@networksolutions.com', '114 3rd Lane', null, 'Orlu', null, 'Nigeria');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dorrie', 'Blazhevich', '01/02/1996', 3, '686-918-8881', 'dblazhevichx@theguardian.com', '36 Hayes Plaza', '2580-164', 'Bairro', 'Lisboa', 'Portugal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Julee', 'Howford', '09/30/1991', 3, null, null, '3 Hovde Circle', '70301', 'Siquirres', null, 'Costa Rica');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Joete', 'Camilletti', '12/17/1993', 2, null, 'jcamillettiz@123-reg.co.uk', '09159 Thackeray Trail', '5602', 'Libacao', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gretta', 'Millea', '11/20/1989', 1, '681-647-5828', 'gmillea10@friendfeed.com', '68231 Clyde Gallagher Pass', null, 'Volodymyrets’', null, 'Ukraine');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Henry', 'Pavlenkov', '02/12/1986', 4, '336-789-5842', null, '17 Nancy Drive', null, 'Bamban', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Vin', 'Effemy', '04/10/2016', 1, '807-859-6104', 'veffemy12@msu.edu', '0 Onsgard Pass', null, 'Xilong', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ashlen', 'Ducker', '01/12/1973', 2, '687-928-9124', 'aducker13@macromedia.com', '9 International Hill', null, 'Tawa', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Maxie', 'Cannicott', '05/17/1998', 3, '245-911-7147', 'mcannicott14@state.gov', '88457 Waxwing Trail', '3863', 'Bāndarban', null, 'Bangladesh');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ulla', 'Barnwall', '03/09/1989', 4, null, 'ubarnwall15@home.pl', '33 Randy Alley', '59034 CEDEX', 'Lille', 'Nord-Pas-de-Calais', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Joscelin', 'Sutworth', '11/12/1995', 3, '319-594-2164', 'jsutworth16@yandex.ru', '5 South Crossing', '141146', 'Fryanovo', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lorin', 'Brachell', '02/20/1974', 3, null, 'lbrachell17@vistaprint.com', '25 Pierstorff Road', '161120', 'Ferapontovo', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cristen', 'Cockshott', '07/18/2010', 1, '835-171-6781', 'ccockshott18@miibeian.gov.cn', '798 Meadow Ridge Circle', null, 'Behābād', null, 'Iran');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Otha', 'Cudd', '12/19/1992', 4, '868-959-6226', null, '3 Carey Pass', '6309', 'General Manuel J. Campos', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kendra', 'Worcs', '07/19/2014', 4, '437-827-5237', 'kworcs1a@un.org', '97 John Wall Alley', '739 51', 'Vojkovice', null, 'Czech Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Elsworth', 'Brind', '10/31/2013', 3, '273-189-2199', 'ebrind1b@hubpages.com', '3 Kennedy Crossing', null, 'Zhixia', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Olwen', 'Le Marchant', '12/02/1967', 2, '943-280-3810', 'olemarchant1c@archive.org', '9 Briar Crest Parkway', null, 'Ngurenrejo', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Doralyn', 'McNamara', '06/16/1962', 4, '148-112-7047', 'dmcnamara1d@home.pl', '28327 Jenna Parkway', '2580', 'Marcos Juárez', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mireielle', null, '05/06/1993', 4, null, 'mbalasin1e@mtv.com', '7277 Manufacturers Circle', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Goddart', 'Brill', '12/24/1978', 2, '469-102-5576', 'gbrill1f@xing.com', '8 Pine View Plaza', '42-160', 'Krzepice', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Loretta', 'Fermoy', '03/06/1975', 1, null, 'lfermoy1g@dion.ne.jp', '714 Comanche Junction', '3070-725', 'Praia de Mira', 'Coimbra', 'Portugal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lexie', 'Sneden', '03/14/2007', 1, '641-593-6121', 'lsneden1h@google.es', '8 Roxbury Hill', null, 'Xiaopingba', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sylvan', 'Glassford', '01/10/2017', 4, null, 'sglassford1i@comsenz.com', '09106 Esker Park', null, 'Arys', null, 'Kazakhstan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Katy', 'Esh', '02/25/1984', 1, '195-349-9836', 'kesh1j@unesco.org', '16283 Sherman Circle', '4332', 'Nagpandayan', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jerri', 'Halward', '04/16/1991', 4, '790-730-0280', null, '750 Westend Crossing', '19280-000', 'Teodoro Sampaio', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Annalise', 'Criag', '10/17/2001', 4, '188-450-5938', 'acriag1l@4shared.com', '49 Division Way', null, 'Longquan', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sophie', 'Joslow', '04/24/2015', 1, '639-491-5820', 'sjoslow1m@tuttocitta.it', '150 Buena Vista Avenue', '747 91', 'Štítina', null, 'Czech Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Candice', 'Sayer', '06/12/1992', 1, '173-822-7793', 'csayer1n@mtv.com', '361 Reinke Plaza', null, 'Debre Tabor', null, 'Ethiopia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Steffane', 'MacDiarmid', '11/19/1984', 1, '967-708-1919', 'smacdiarmid1o@statcounter.com', '58 Arizona Way', null, 'Kampungtengah', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rutter', 'Wynter', '09/17/1996', 4, '760-817-3409', 'rwynter1p@europa.eu', '84212 Southridge Terrace', '41703', 'Dos Hermanas', 'Andalucia', 'Spain');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Creight', 'Pfaffel', '11/06/1964', 2, '956-171-4343', 'cpfaffel1q@ft.com', '2 Novick Parkway', null, 'Baiyin', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Anabelle', 'Buntine', '05/08/1967', 4, '705-540-2584', 'abuntine1r@twitpic.com', '31933 Oak Court', '3109', 'Sylhet', null, 'Bangladesh');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mercedes', 'Sexton', '10/11/2010', 3, '489-222-8330', 'msexton1s@skype.com', '5 Shopko Hill', '34-125', 'Sułkowice', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Eirena', 'Moulton', '01/14/1968', 3, '885-337-3532', 'emoulton1t@weebly.com', '215 Grayhawk Park', null, 'Longlou', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Tremayne', 'Casiroli', '11/14/1970', 2, null, 'tcasiroli1u@sohu.com', '2 Derek Point', '8711', 'San Fernando', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Edwin', 'Hanna', '07/16/1983', 2, '995-244-7219', 'ehanna1v@usatoday.com', '45 Mandrake Street', '86000-000', 'Londrina', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rodina', 'Milliere', '09/15/1976', 2, '999-409-0613', 'rmilliere1w@globo.com', '51180 Shelley Center', '35903 CEDEX 9', 'Rennes', 'Bretagne', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Robinet', 'Fellnee', '04/12/2014', 2, '206-214-0134', 'rfellnee1x@nsw.gov.au', '4081 Quincy Avenue', '98185', 'Seattle', 'Washington', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Nanci', 'Yokley', '06/06/2007', 1, '138-486-1080', 'nyokley1y@gravatar.com', '50586 Mosinee Street', null, 'Liên Chiểu', null, 'Vietnam');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Nickey', 'Johnke', '12/24/1970', 2, '487-366-7290', 'njohnke1z@un.org', '8355 Lakewood Gardens Circle', '330 24', 'Heřmanova Huť', null, 'Czech Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gery', 'Kilroy', '08/06/2017', 4, '739-157-2135', 'gkilroy20@ebay.co.uk', '1852 Holy Cross Way', '68-219', 'Tuplice', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gweneth', null, '11/21/1974', 4, '478-829-3008', 'gmanuello21@icq.com', '3 Clyde Gallagher Pass', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Pavlov', 'Trodler', '09/21/1990', 2, '575-915-8193', 'ptrodler22@discuz.net', '10 Gale Plaza', null, 'Bharatpur', null, 'Nepal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Domeniga', 'Mielnik', '05/29/1997', 1, '496-280-0112', 'dmielnik23@tripadvisor.com', '5774 Southridge Road', '11104 CEDEX', 'Narbonne', 'Languedoc-Roussillon', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Richy', 'Ahlf', '10/10/2007', 1, '941-479-1338', 'rahlf24@va.gov', '069 Londonderry Court', '601389', 'Muromtsevo', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Haskell', 'Lipscomb', '01/08/2016', 4, '204-355-8570', 'hlipscomb25@wunderground.com', '5268 Hintze Center', null, 'Río Campo', null, 'Equatorial Guinea');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mickie', 'Iacomi', '05/30/1973', 1, '929-347-7559', 'miacomi26@tripadvisor.com', '3 Prairieview Terrace', '676-0828', 'Kakogawachō-honmachi', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mariann', 'Carnalan', '07/20/1980', 4, '140-775-6104', 'mcarnalan27@gnu.org', '92932 Dottie Crossing', null, 'Yuetang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bernardo', 'Skones', '12/03/1992', 4, '144-742-8390', 'bskones28@wix.com', '57 Briar Crest Place', null, 'Shigutang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Werner', 'Pashba', '12/01/1978', 1, '943-791-7591', 'wpashba29@over-blog.com', '19 Morningstar Circle', null, 'Karoya', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Brit', null, '11/28/1962', 1, null, 'bgledhill2a@scribd.com', '48184 Hallows Park', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Correy', 'Knowlson', '06/24/1963', 1, '681-674-8392', null, '212 Emmet Parkway', null, 'Sumberkemuning', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Florance', 'Bunce', '11/15/2005', 4, '314-630-0740', 'fbunce2c@comcast.net', '85953 Thackeray Way', '11112', 'Juan Santiago', null, 'Dominican Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jessalyn', 'Bottlestone', '02/23/1998', 4, '692-789-9723', 'jbottlestone2d@flavors.me', '65545 Meadow Ridge Point', '111 27', 'Stockholm', 'Stockholm', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wylie', 'Gilston', '02/11/2002', 4, null, 'wgilston2e@admin.ch', '508 Schiller Circle', null, 'Xiangqiao', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Tony', 'Snasdell', '11/10/1968', 3, '709-332-6708', 'tsnasdell2f@imgur.com', '21 Cascade Terrace', null, 'Vynohradove', null, 'Ukraine');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Robinia', 'Janes', '07/10/2017', 3, '414-539-3613', 'rjanes2g@technorati.com', '3 Marquette Point', '33140', 'Si Sa Ket', null, 'Thailand');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Carroll', 'Bartholat', '12/24/1962', 3, '719-757-2804', 'cbartholat2h@newyorker.com', '55 Morning Plaza', null, 'Sanzao', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Malia', 'Eake', '06/22/2015', 3, '696-738-6067', 'meake2i@psu.edu', '74881 Westridge Plaza', '75582 CEDEX 12', 'Paris 12', 'Île-de-France', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Terri', 'Skurm', '06/18/1999', 3, '317-163-3005', null, '3 Elka Street', '5208', 'Pinamalayan', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jean', 'St. Ledger', '08/25/2000', 2, '937-241-3185', 'jstledger2k@illinois.edu', '73548 Myrtle Avenue', null, 'Rrapë', null, 'Albania');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cornell', 'Davson', '01/09/1968', 4, '654-455-5837', 'cdavson2l@webeden.co.uk', '2 Southridge Circle', null, 'Masohi', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Benito', 'Paulillo', '02/16/1973', 4, '458-593-4076', 'bpaulillo2m@rediff.com', '13 Sycamore Circle', 'MD-5354', 'Comrat', null, 'Moldova');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lari', 'Naden', '03/17/1976', 3, '196-585-1297', 'lnaden2n@pbs.org', '4 Mccormick Terrace', null, 'Lhokkruet', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Paulie', 'Bramer', '01/11/1971', 3, '648-646-6366', 'pbramer2o@pen.io', '387 Larry Hill', null, 'Pengilon', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Oates', 'Orgill', '07/01/1984', 3, '884-996-9600', 'oorgill2p@topsy.com', '8 Banding Trail', null, 'Blora', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dennison', 'Duchasteau', '09/15/1979', 3, '265-937-4021', 'dduchasteau2q@examiner.com', '69 Nelson Plaza', null, 'Jurak Lao’', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Stephie', 'Magog', '11/21/1982', 2, '372-193-2291', 'smagog2r@merriam-webster.com', '690 Lighthouse Bay Park', null, 'Yushugou', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Stillman', 'De Simoni', '05/04/1981', 1, '390-779-1367', 'sdesimoni2s@unicef.org', '3133 Coleman Alley', null, 'Reitoca', null, 'Honduras');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dante', 'Paulsen', '11/28/2002', 3, '715-486-0192', 'dpaulsen2t@diigo.com', '00 Melvin Way', null, 'Victoria Falls', null, 'Zimbabwe');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ruby', 'Shergill', '06/05/1996', 3, '839-320-1741', 'rshergill2u@ifeng.com', '07 Sunfield Way', '618206', 'Chusovoy', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Faye', 'Gammill', '11/13/2008', 3, '930-265-1902', 'fgammill2v@forbes.com', '3 Walton Trail', '8011', 'Santa Maria', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Issie', 'Nannetti', '02/27/2013', 4, '907-222-5120', 'inannetti2w@gmpg.org', '24 Anhalt Pass', null, 'Dovhe', null, 'Ukraine');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rhianna', 'Lindwall', '04/15/1985', 1, '403-725-8030', 'rlindwall2x@pbs.org', '11175 Little Fleur Plaza', null, 'Samdo', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Emiline', 'Janjusevic', '04/23/2000', 1, '351-616-5046', 'ejanjusevic2y@cam.ac.uk', '7 Veith Center', null, 'Dushang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Carlen', 'LAbbet', '11/11/1967', 1, '553-444-0149', 'clabbet2z@tinyurl.com', '56140 Elgar Way', null, 'Boca de Uchire', null, 'Venezuela');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Worth', 'Cohane', '01/28/1997', 2, '702-435-1040', 'wcohane30@unblog.fr', '24130 Namekagon Way', null, 'Geidam', null, 'Nigeria');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Pen', 'Brigg', '06/25/1972', 2, null, 'pbrigg31@zimbio.com', '59389 Harbort Road', '442070', 'Belovo', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Addie', 'Collingdon', '09/15/2014', 1, '208-263-2088', 'acollingdon32@ebay.co.uk', '02 Chinook Street', null, 'Dindima', null, 'Nigeria');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Isa', 'Hearnshaw', '01/30/1986', 1, '929-511-6898', 'ihearnshaw33@vimeo.com', '31766 Veith Court', null, 'Andou', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ora', 'Grigorini', '06/03/2014', 4, '878-489-0728', 'ogrigorini34@unicef.org', '0 Stone Corner Lane', '86360-000', 'Bandeirantes', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ara', 'Sirey', '02/03/2007', 1, '483-386-7312', 'asirey35@nydailynews.com', '634 Waubesa Parkway', null, 'Trai Ngau', null, 'Vietnam');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Erik', 'Hawkeswood', '01/16/1983', 1, null, 'ehawkeswood36@youku.com', '3474 Loomis Crossing', null, 'Jinhu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Amaleta', 'Trahar', '05/18/1997', 1, '476-373-6010', 'atrahar37@washingtonpost.com', '0810 Merry Point', '347014', 'Sinegorskiy', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Avery', 'Purrier', '08/21/1963', 2, '519-220-7429', 'apurrier38@multiply.com', '84334 Valley Edge Junction', '756 53', 'Vidče', null, 'Czech Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kiele', 'Hambridge', '11/06/1968', 1, null, 'khambridge39@ehow.com', '92 Grasskamp Street', null, 'Wanjiazhuang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kerk', 'Fellgett', '11/27/2002', 4, '725-301-8914', 'kfellgett3a@pinterest.com', '82 Schiller Drive', '51009', 'Santa Maria', 'Mexico', 'Mexico');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bee', 'Draude', '08/06/1998', 3, '534-184-1649', 'bdraude3b@blinklist.com', '7 Jackson Road', '96180', 'Cho-airong', null, 'Thailand');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Marty', 'Dillintone', '08/24/1980', 1, '725-268-6257', 'mdillintone3c@devhub.com', '07 Cascade Circle', null, 'Bulupayung', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Tamarah', 'Ailward', '10/07/1984', 1, '205-881-9927', 'tailward3d@scientificamerican.com', '0716 High Crossing Trail', '35236', 'Birmingham', 'Alabama', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wadsworth', 'Blewmen', '05/06/2007', 2, '931-704-6659', 'wblewmen3e@rakuten.co.jp', '405 Gerald Center', '674100', 'Verkh-Usugli', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dolley', 'Blaschek', '05/22/1982', 1, '559-177-3298', null, '32 Kinsman Lane', null, 'Derhachi', null, 'Ukraine');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Devlen', 'Pearmine', '11/17/1974', 4, '153-723-8074', 'dpearmine3g@cbslocal.com', '81 Di Loreto Park', null, 'Prilep', null, 'Kosovo');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bruno', 'Pladen', '02/10/2000', 3, '937-487-8471', 'bpladen3h@ft.com', '534 Westport Park', null, 'Zhenziliang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Amity', 'Lamberton', '11/24/1966', 4, '247-206-1619', 'alamberton3i@github.io', '8297 Lunder Avenue', null, 'Sarāb', null, 'Iran');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Germana', null, '03/26/1979', 2, null, 'gparres3j@ca.gov', '6195 Monument Hill', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Johannes', 'Reichelt', '03/28/2017', 3, '287-296-7485', 'jreichelt3k@pcworld.com', '02 Manitowish Park', null, 'Fulu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jacqui', 'Lidgley', '03/18/1969', 1, '825-628-9071', 'jlidgley3l@sitemeter.com', '5 Katie Pass', '64110-000', 'José de Freitas', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dianemarie', 'Laddle', '10/07/2008', 4, '769-444-3310', 'dladdle3m@howstuffworks.com', '8 Saint Paul Junction', '403772', 'Medveditskiy', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Weston', 'Riceards', '09/02/2017', 4, '863-579-6607', 'wriceards3n@shinystat.com', '33089 Farmco Point', '353650', 'Kamyshevatskaya', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Olympe', 'Jakubowski', '01/25/2007', 3, '384-183-4095', 'ojakubowski3o@skyrock.com', '8739 Blaine Point', null, 'Huangbao', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Tabbatha', 'Simoes', '01/20/1990', 1, '808-595-3472', 'tsimoes3p@elpais.com', '819 Morrow Crossing', '169 70', 'Solna', 'Stockholm', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ange', 'Taree', '10/13/1988', 2, null, 'ataree3q@skype.com', '452 Namekagon Parkway', '59347-000', 'Ouro Branco', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Giulio', 'Martyn', '07/15/1975', 2, '578-563-0044', 'gmartyn3r@mediafire.com', '638 Village Green Way', '37950-000', 'São Sebastião do Paraíso', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ingemar', 'Sipson', '10/19/1965', 4, '511-171-3475', 'isipson3s@deviantart.com', '2 Bluestem Street', null, 'Maradi', null, 'Niger');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gayleen', 'Gother', '01/20/2016', 2, '839-415-8878', 'ggother3t@g.co', '99520 Hoard Crossing', null, 'Choibalsan', null, 'Mongolia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Obadias', 'Vaisey', '03/07/1972', 4, '709-284-4745', 'ovaisey3u@berkeley.edu', '3 Banding Point', null, 'Krajan Bakalan', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Melany', 'Schmidt', '09/18/1961', 4, '822-817-7989', 'mschmidt3v@adobe.com', '567 Tomscot Hill', null, 'Unanu', null, 'Micronesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Freemon', 'Noel', '05/24/1991', 4, '512-974-6916', 'fnoel3w@dell.com', '01 Eliot Park', null, 'Longgang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Emelen', 'Dutson', '07/04/1990', 4, '538-902-7502', 'edutson3x@tuttocitta.it', '00308 Johnson Trail', '181410', 'Pytalovo', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Duke', 'Gitsham', '12/03/2013', 3, '174-212-5956', 'dgitsham3y@addthis.com', '63272 Lindbergh Drive', null, 'Shagedu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lilly', 'Whapples', '11/06/2015', 2, null, 'lwhapples3z@mysql.com', '914 Acker Street', null, 'Capatárida', null, 'Venezuela');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Orrin', 'Sellen', '06/27/1996', 2, '516-967-6393', 'osellen40@buzzfeed.com', '1815 Nova Court', null, 'Évlalo', null, 'Greece');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Malena', 'Blevin', '05/24/2014', 4, null, 'mblevin41@fc2.com', '8669 Milwaukee Point', null, 'Oujda', null, 'Morocco');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lind', 'Fenimore', '02/27/1990', 1, '886-152-3492', 'lfenimore42@creativecommons.org', '7868 Springs Place', '95711 CEDEX 1', 'Roissy Charles-de-Gaulle', 'Île-de-France', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Valeda', 'Shew', '10/19/1975', 3, '987-165-1747', 'vshew43@economist.com', '43569 Service Plaza', '054028', 'Marinilla', null, 'Colombia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Brnaba', 'Pendall', '03/30/1984', 1, null, 'bpendall44@apache.org', '2897 Glacier Hill Street', '56250-000', 'Trindade', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Donnie', 'Perassi', '01/18/1965', 1, '844-439-6857', 'dperassi45@quantcast.com', '98872 Westridge Point', null, 'Xiaoying', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Pail', 'Rayson', '03/05/2008', 3, '873-322-1345', 'prayson46@mac.com', '4643 Mesta Parkway', '4335', 'Angatel', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Shara', 'Wem', '09/19/1972', 3, '475-731-4111', 'swem47@hud.gov', '324 Lotheville Trail', '58404 CEDEX', 'La Charité-sur-Loire', 'Bourgogne', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Creight', 'Schmidt', '03/03/1991', 4, '530-139-7862', 'cschmidt48@unc.edu', '470 High Crossing Way', null, 'Hukeng', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Merilee', 'Herries', '04/13/2014', 1, '966-562-1070', 'mherries49@dedecms.com', '99 Service Alley', null, 'Qijing', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Farra', 'Stannislawski', '04/24/2006', 1, '541-234-7704', 'fstannislawski4a@prlog.org', '25836 Upham Avenue', null, 'Shuiyang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Veronika', 'De Bruyne', '08/27/1965', 2, '837-309-5526', 'vdebruyne4b@yelp.com', '0 Old Shore Point', null, 'Qarah Bāgh', null, 'Afghanistan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Natala', 'Bernaciak', '05/31/1975', 4, '259-401-8422', 'nbernaciak4c@github.io', '2 Johnson Terrace', null, 'Duntou', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Reamonn', 'Adolfson', '05/11/1982', 4, '213-210-3497', 'radolfson4d@nhs.uk', '130 Anhalt Lane', '549 06', 'Moholm', 'Västra Götaland', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rozanne', 'Trusslove', '11/29/1977', 1, '627-286-8376', 'rtrusslove4e@google.co.jp', '26812 Lakewood Junction', null, 'Cilimus Kulon', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Carry', 'Lannen', '04/07/1983', 4, '419-810-7400', 'clannen4f@livejournal.com', '4 Hallows Avenue', null, 'Moramanga', null, 'Madagascar');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Averil', 'Benninck', '10/08/1982', 3, '255-195-9207', 'abenninck4g@simplemachines.org', '8 Longview Way', null, 'Heimahe', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Midge', 'Townsend', '09/12/1966', 2, '710-116-2694', 'mtownsend4h@mtv.com', '33513 Pleasure Lane', '4600-730', 'Escola', 'Porto', 'Portugal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Felita', null, '01/25/2014', 1, '975-765-2327', null, '6 Maywood Park', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Augusto', 'Sommerlin', '04/10/2011', 3, '908-990-1599', 'asommerlin4j@blogtalkradio.com', '06224 Prairieview Pass', '51250', 'Novi Vinodolski', null, 'Croatia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Orin', 'Kirkebye', '05/21/2010', 1, '935-627-6549', 'okirkebye4k@fc2.com', '5 Express Hill', null, 'Zhanqian', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Terence', 'Barhams', '03/07/1964', 2, '368-679-9417', 'tbarhams4l@umich.edu', '21012 Transport Court', null, 'Dongfu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Guido', 'Ickovicz', '12/03/2012', 4, '617-430-5781', 'gickovicz4m@economist.com', '721 Thompson Center', '07900-000', 'Francisco Morato', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Francisco', 'Stutely', '04/04/1989', 2, '983-219-7767', 'fstutely4n@dagondesign.com', '829 New Castle Place', 'E4S', 'Bouctouche', 'Nouveau-Brunswick', 'Canada');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Maximo', 'Staples', '12/04/1965', 2, '972-569-6144', 'mstaples4o@mysql.com', '53 Leroy Hill', null, 'Wuduhe', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Othello', 'Josephson', '06/27/1997', 1, '146-620-4949', 'ojosephson4p@nasa.gov', '8 Atwood Plaza', null, 'Taranovskoye', null, 'Kazakhstan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Nikaniki', 'Sperwell', '07/31/2002', 3, '999-780-2443', 'nsperwell4q@joomla.org', '0230 Fisk Plaza', '446870', 'Yelkhovka', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Shaun', 'Tyzack', '08/09/1995', 3, '209-127-3966', 'styzack4r@wikispaces.com', '1 Tony Trail', '69240', 'Islāmkot', null, 'Pakistan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lyn', 'D''Agostino', '08/01/2000', 1, '536-516-2522', 'ldagostino4s@baidu.com', '78315 Myrtle Avenue', null, 'Huozhuangzi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cindee', 'Venneur', '07/19/1962', 1, '203-352-7867', 'cvenneur4t@dot.gov', '13430 Bonner Place', '939-0751', 'Nyūzen', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Garrek', 'Harder', '01/26/1986', 4, '644-154-9827', 'gharder4u@economist.com', '37 Dryden Crossing', '21-077', 'Spiczyn', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Angeli', 'Rosa', '08/08/1962', 4, '286-147-0581', 'arosa4v@posterous.com', '7 Stuart Plaza', null, 'Yako', null, 'Burkina Faso');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Waring', 'Beedell', '11/11/1993', 2, '623-982-5110', 'wbeedell4w@squidoo.com', '75364 Corben Avenue', null, 'Cengang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Christin', 'Perott', '01/08/1993', 3, '454-467-2182', null, '192 Loomis Street', null, 'Sulahan', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Nicole', 'Burchnall', '07/02/1983', 3, '564-936-1326', null, '31 Haas Street', null, 'Tangkanpulit', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Marj', 'Keenlayside', '12/07/1984', 3, '776-958-2440', 'mkeenlayside4z@goo.ne.jp', '45 Sommers Place', '4396', 'Sandnes', 'Rogaland', 'Norway');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wandie', 'Melsome', '06/27/1973', 2, '798-587-3271', 'wmelsome50@ucsd.edu', '74 Rigney Pass', '11503', 'Mercedes', null, 'Costa Rica');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Adriana', 'Pochin', '11/17/2000', 4, '900-393-2328', 'apochin51@mayoclinic.com', '655 Alpine Terrace', null, 'Mauponggo', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Alecia', 'Rebeiro', '08/22/1995', 4, '961-264-9124', 'arebeiro52@google.nl', '300 Main Court', null, 'Krasne', null, 'Ukraine');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Maia', 'Rixon', '04/10/2008', 3, null, 'mrixon53@reuters.com', '268 Butterfield Hill', null, 'Chenfang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Alvira', 'Gilford', '01/02/2001', 3, null, 'agilford54@cam.ac.uk', '793 Cascade Trail', null, 'Gedaliang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Tiertza', 'Guidone', '08/25/2006', 2, null, 'tguidone55@businessweek.com', '22 Algoma Crossing', '307505', 'Rudnichnyy', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Tiffany', 'Sprake', '04/07/1976', 4, '526-790-7224', 'tsprake56@1688.com', '237 Sheridan Drive', null, 'Fuli', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Horatia', 'Reville', '02/02/1982', 3, '452-738-3951', 'hreville57@lulu.com', '9 Prairieview Crossing', '3403', 'San Luis del Palmar', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rosamond', 'Duprey', '11/01/1962', 4, null, 'rduprey58@plala.or.jp', '1 Red Cloud Junction', '58-405', 'Krzeszów', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Russ', 'Wickman', '12/21/2012', 2, '159-241-1904', 'rwickman59@live.com', '4 Meadow Vale Pass', '289-1343', 'Narutō', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Marlo', 'Powlett', '05/14/2005', 2, '798-807-6714', 'mpowlett5a@tripod.com', '6 Service Alley', null, 'Kabba', null, 'Nigeria');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Flemming', 'Coleson', '04/18/2001', 3, '307-517-9780', 'fcoleson5b@weebly.com', '5 Carioca Junction', '3504', 'Iguig', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ludvig', 'Dello', '09/25/2012', 4, '346-902-6189', 'ldello5c@howstuffworks.com', '8928 Eagan Pass', null, 'Da’an', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rosemonde', null, '02/12/1999', 1, '318-583-0306', 'rrosengarten5d@meetup.com', '7968 Ridgeview Drive', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kippie', 'Milton', '04/26/1982', 3, '734-918-0774', 'kmilton5e@bizjournals.com', '40850 Susan Crossing', null, 'Chinchaypujio', null, 'Peru');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jorge', 'McCoole', '03/01/2000', 4, '582-175-5687', 'jmccoole5f@nsw.gov.au', '6316 Village Green Alley', null, 'Souziqiu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mariette', 'Alford', '02/05/1979', 2, '647-561-0214', 'malford5g@earthlink.net', '8919 Steensland Hill', null, 'Mbomba', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Shawn', 'Turford', '03/17/1969', 1, '127-799-8036', 'sturford5h@tinyurl.com', '43334 Charing Cross Terrace', null, 'Naga', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kaleena', 'Elsie', '05/08/1997', 4, '212-986-4312', 'kelsie5i@unesco.org', '4778 Morning Alley', '11247', 'Brooklyn', 'New York', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Thorvald', 'Annies', '07/14/1973', 3, '614-524-3869', 'tannies5j@youku.com', '09074 Ludington Street', '7104', 'Rizal', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Calvin', 'Godding', '01/12/1961', 2, null, 'cgodding5k@mozilla.org', '2951 Tony Circle', '417 43', 'Göteborg', 'Västra Götaland', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cecile', 'Fermer', '03/22/2001', 3, null, 'cfermer5l@wix.com', '03684 Comanche Point', null, 'Datian', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Quincy', 'Godlip', '04/03/2005', 4, '337-637-8634', 'qgodlip5m@reuters.com', '18 Express Center', '203-0044', 'Nishi-Tokyo-shi', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wilhelmine', 'Gueinn', '12/13/1963', 3, null, 'wgueinn5n@opensource.org', '21679 Bluejay Circle', null, 'Gengwan', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wilie', 'Haskins', '01/29/1969', 1, '352-804-5698', 'whaskins5o@biglobe.ne.jp', '6733 Menomonie Street', null, 'Atocha', null, 'Bolivia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Karel', 'Mc Carroll', '05/26/1971', 4, '890-866-7730', 'kmccarroll5p@go.com', '95 Schmedeman Street', null, 'Daxin', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Shawnee', 'Dunkerley', '07/31/1994', 4, '765-298-7997', 'sdunkerley5q@redcross.org', '95 Meadow Ridge Avenue', null, 'Karangtengah', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ranee', 'Casarili', '02/25/1994', 4, '555-432-4427', 'rcasarili5r@sogou.com', null, null, 'Marigot', null, 'Haiti');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ashleigh', 'Heggman', '12/06/1981', 1, '991-664-7273', 'aheggman5s@4shared.com', '395 Ridgeview Road', '92727 CEDEX', 'Nanterre', 'Île-de-France', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Leroy', 'Farlam', '01/23/2015', 1, '308-216-3157', 'lfarlam5t@imgur.com', '720 Hayes Place', '659555', 'Bystryanka', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Steffie', 'Lissandrini', '04/12/1968', 4, null, 'slissandrini5u@ucoz.ru', '7028 Tennessee Hill', null, 'Marco', null, 'Peru');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sven', 'Butterick', '01/18/1994', 1, '955-877-5843', 'sbutterick5v@creativecommons.org', '6859 Hollow Ridge Terrace', null, 'Kawengan', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Merralee', 'Callway', '10/07/1980', 2, '579-441-9070', 'mcallway5w@boston.com', '86277 Center Junction', '88-324', 'Jeziora Wielkie', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Arley', 'Duffree', '07/09/1969', 2, '318-359-4606', 'aduffree5x@com.com', '64585 Rutledge Alley', null, 'Nixi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Heywood', 'Borborough', '11/25/1988', 3, '485-428-1732', 'hborborough5y@netlog.com', '97 Debra Center', null, 'Pomahuaca', null, 'Peru');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Alfie', 'Montgomery', '04/12/2009', 3, '885-184-9647', 'amontgomery5z@accuweather.com', '8 Michigan Alley', null, 'Pantai Ceuremen', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gerta', 'Dunaway', '04/10/1970', 4, '645-591-6084', 'gdunaway60@apple.com', '25716 Stuart Alley', null, 'Wangshi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Land', 'Reary', '03/06/1978', 1, '376-391-7275', 'lreary61@photobucket.com', '49088 Golden Leaf Parkway', '541038', 'Villa del Rosario', null, 'Colombia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dayna', 'Lathee', '01/29/2009', 3, '321-345-6354', 'dlathee62@psu.edu', '979 Village Green Avenue', '1017', 'Diamantina', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ignacius', 'McCloughen', '11/30/1974', 3, '493-714-4944', 'imccloughen63@google.co.jp', '9 Debra Circle', null, 'As Saddah', null, 'Yemen');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Eddi', 'Djorevic', '01/07/1975', 4, '985-838-4323', 'edjorevic64@theglobeandmail.com', '8263 Nelson Junction', null, 'Velykyi Bereznyi', null, 'Ukraine');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bernadina', 'Lyfe', '07/16/1973', 2, '346-898-9550', 'blyfe65@lulu.com', '08 Anniversary Lane', '07800-000', 'Franco da Rocha', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Read', 'MacMaster', '08/27/1987', 2, '904-643-8184', 'rmacmaster66@bloglines.com', '291 Alpine Parkway', null, 'Bafilo', null, 'Togo');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Angie', 'Prawle', '09/05/2014', 3, '927-824-2137', 'aprawle67@mail.ru', '8733 Oak Valley Plaza', null, 'Huangtian', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Brady', 'Yukhnini', '04/09/1988', 1, null, 'byukhnini68@mail.ru', '2270 Evergreen Point', '232 24', 'Arlöv', 'Skåne', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Giusto', 'Deshorts', '11/10/1983', 1, '392-166-4988', 'gdeshorts69@bloglovin.com', '69965 Londonderry Circle', null, 'Ouaoula', null, 'Morocco');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Caprice', 'Purcell', '10/14/2012', 3, '580-627-2054', 'cpurcell6a@patch.com', '4 Beilfuss Circle', '431674', 'Chishmy', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dev', 'Quixley', '06/24/1993', 2, '477-776-3267', null, '9032 Sommers Junction', null, 'Kemiri Daya', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Diandra', 'Oakshott', '03/28/1967', 2, '800-452-2559', 'doakshott6c@oakley.com', '355 Pierstorff Way', '311-2424', 'Itako', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Barbaraanne', 'Pirnie', '04/09/1985', 1, '513-810-9842', 'bpirnie6d@yolasite.com', '9 Pankratz Hill', '2800', 'Bangued', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Colas', 'Pigeon', '02/20/2016', 1, '810-852-3445', 'cpigeon6e@dailymail.co.uk', '049 Lotheville Crossing', null, 'Dāngām', null, 'Afghanistan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Nickolaus', 'Burns', '07/26/1978', 3, '914-927-6797', 'nburns6f@telegraph.co.uk', '3653 Dottie Circle', '39620-000', 'Medina', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Pepe', 'Buttery', '07/09/1995', 3, null, 'pbuttery6g@icq.com', '91 Barnett Alley', '97755-000', 'Pôsto Fiscal Rolim de Moura', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Joline', 'Renney', '01/20/1978', 4, '551-649-5063', 'jrenney6h@latimes.com', '2918 6th Hill', null, 'Erong', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Des', 'Brocks', '02/10/2002', 2, '693-152-6377', 'dbrocks6i@shop-pro.jp', '148 Brickson Park Road', null, 'Côn Sơn', null, 'Vietnam');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Hugibert', 'Kruszelnicki', '05/16/1977', 1, null, 'hkruszelnicki6j@theatlantic.com', '63 Waxwing Place', '613110', 'Vakhrushi', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Correna', 'McCoughan', '11/06/1976', 2, '598-842-3931', 'cmccoughan6k@seattletimes.com', '94892 Mockingbird Crossing', '3361', 'General Alvear', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Norry', 'Dunaway', '02/24/1991', 2, '919-137-3983', 'ndunaway6l@google.nl', '9295 Twin Pines Court', '27635', 'Raleigh', 'North Carolina', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Zorana', 'Mustill', '12/24/1980', 1, null, 'zmustill6m@va.gov', '4810 Paget Place', '216420', 'Shumyachi', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ritchie', 'Meanwell', '10/28/1981', 4, '240-658-3684', 'rmeanwell6n@1688.com', '3456 West Court', null, 'Longkou', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kristen', 'Stud', '05/24/1980', 1, '755-999-6599', 'kstud6o@moonfruit.com', '46 Northridge Terrace', null, 'Loangmaka', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Taddeusz', 'Ormesher', '03/17/1972', 3, '106-823-4095', 'tormesher6p@cbsnews.com', '6 Mockingbird Park', null, 'Cañazas', null, 'Panama');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Melissa', 'Robilart', '06/13/1994', 3, '832-234-8234', 'mrobilart6q@wikispaces.com', '3 Pond Parkway', '44322', 'Lipovljani', null, 'Croatia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Arman', 'Bargery', '12/21/1982', 1, '812-109-8573', 'abargery6r@moonfruit.com', '49 Hanson Place', null, 'Al Ḩarf', null, 'Yemen');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sarina', 'Pendrid', '10/24/1983', 4, null, 'spendrid6s@cbsnews.com', '23398 Canary Way', null, 'Mahe', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Juanita', 'Raitie', '10/05/1988', 2, '520-724-1210', 'jraitie6t@ihg.com', '0 Hanson Crossing', null, 'Alto del Espino', null, 'Panama');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mella', 'Chieze', '12/02/2011', 4, '774-576-9333', 'mchieze6u@devhub.com', '179 2nd Place', null, 'Anrong', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Blaine', 'Sizeland', '03/14/2013', 4, '798-500-9280', 'bsizeland6v@yellowbook.com', '82582 Dexter Crossing', '761 51', 'Norrtälje', 'Stockholm', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Stephana', 'Iacobucci', '03/26/2003', 2, null, 'siacobucci6w@pcworld.com', '8 Scofield Street', '68-208', 'Łęknica', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Westley', null, '02/26/1995', 2, '228-897-5602', 'wpetteford6x@live.com', '2 Portage Alley', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Myrlene', 'Huegett', '12/18/1990', 1, '463-502-6504', 'mhuegett6y@army.mil', '1146 Pawling Alley', null, 'Balgatay', null, 'Mongolia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Pammi', 'Baulcombe', '10/08/2008', 4, null, 'pbaulcombe6z@taobao.com', '4 Charing Cross Court', '667 91', 'Forshaga', 'Värmland', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Elke', 'Hakewell', '10/24/2001', 3, '349-721-5955', 'ehakewell70@privacy.gov.au', '50122 Hooker Park', null, 'Cajamarca', null, 'Peru');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Carlota', 'Gillice', '01/06/1981', 1, '897-485-8660', 'cgillice71@who.int', '72 Bellgrove Point', '57000-000', 'Maceió', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kory', 'Campanelli', '07/08/2012', 2, '423-921-8217', 'kcampanelli72@prlog.org', '4342 Bunting Parkway', '32253', 'Komletinci', null, 'Croatia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cyrus', 'Falconer-Taylor', '08/19/2002', 4, '909-561-1753', 'cfalconertaylor73@ebay.co.uk', '58103 Sachtjen Junction', '20520', 'Kuala Terengganu', 'Terengganu', 'Malaysia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kay', 'Maudsley', '11/10/1964', 4, '756-505-5517', 'kmaudsley74@over-blog.com', '3274 Corben Road', null, 'Awilega', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wilow', 'Sleeman', '08/01/1990', 1, null, null, '8115 Caliangt Court', '701 91', 'Örebro', 'Örebro', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gayle', 'Duffit', '02/06/1972', 1, '925-697-8580', 'gduffit76@cdc.gov', '14356 Thackeray Place', null, 'Damaishan', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Honor', 'Bischop', '09/27/2007', 4, '920-169-4460', 'hbischop77@furl.net', '5645 Dennis Avenue', '69367 CEDEX 07', 'Lyon', 'Rhône-Alpes', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Murdoch', 'Swadlinge', '05/31/2001', 2, '973-633-6610', 'mswadlinge78@rakuten.co.jp', '3 Saint Paul Court', '27204 CEDEX', 'Vernon', 'Haute-Normandie', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ginger', 'Brogioni', '04/08/1963', 4, null, 'gbrogioni79@house.gov', '75 Londonderry Road', '6516', 'Panalanoy', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kippy', 'Anlay', '12/24/1973', 2, '598-254-3000', 'kanlay7a@alexa.com', '90599 Oxford Park', '89240-000', 'São Francisco do Sul', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ephrayim', 'Pavlovsky', '12/09/1962', 4, '819-934-2904', 'epavlovsky7b@mapquest.com', null, '2520-005', 'Baleal', 'Leiria', 'Portugal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Stefan', null, '09/21/1979', 1, '505-926-2997', 'sbewly7c@reuters.com', '18517 Buhler Trail', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bank', 'Perryn', '03/03/1994', 4, null, 'bperryn7d@sbwire.com', '0226 Claremont Junction', null, 'Gjinkar', null, 'Albania');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Aeriell', 'Aspling', '01/10/1991', 2, '488-173-7715', 'aaspling7e@ucsd.edu', '0844 Thompson Terrace', null, 'Providencia', null, 'Peru');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Marius', 'Harbord', '10/20/1983', 3, '394-738-8002', 'mharbord7f@parallels.com', '7 Canary Crossing', null, 'Camargo', null, 'Bolivia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Morissa', 'Klamman', '02/13/1964', 3, '876-702-9738', 'mklamman7g@europa.eu', '1723 Merchant Lane', null, 'Xiamayu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lory', 'Britland', '03/12/1997', 4, '467-196-8542', 'lbritland7h@reuters.com', '0707 Pennsylvania Road', '4545', 'Patea', null, 'New Zealand');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Brandea', 'Vieyra', '06/12/2014', 1, '716-823-8793', 'bvieyra7i@reference.com', '0 Hollow Ridge Point', null, 'Xihanling', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gertruda', 'Yakutin', '06/29/1977', 2, '967-156-3965', 'gyakutin7j@illinois.edu', null, '949-1738', 'Minakuchi', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Daffy', 'Smither', '10/19/1991', 4, '178-610-8247', 'dsmither7k@studiopress.com', '0812 Paget Alley', null, 'Lizhuangzi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Chiquia', 'Gater', '12/06/1965', 3, '245-964-8083', 'cgater7l@wikimedia.org', '7593 Grim Hill', '12004', 'Comitancillo', null, 'Guatemala');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Elnore', 'Mazey', '10/17/1989', 3, '808-792-8865', 'emazey7m@bigcartel.com', '553 Porter Plaza', null, 'Antou', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gwendolyn', 'Hurdedge', '02/09/1968', 2, '966-392-3511', 'ghurdedge7n@meetup.com', '829 Dapin Place', null, 'Ikalamavony', null, 'Madagascar');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lucio', 'Marklew', '07/04/2005', 4, '581-947-1620', 'lmarklew7o@w3.org', '7749 Londonderry Pass', null, 'Pali', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Stefan', 'Bottjer', '09/09/1983', 4, '693-182-3850', 'sbottjer7p@sogou.com', '74 Comanche Pass', null, 'Guanting', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sylvester', 'Korba', '10/13/1984', 1, null, 'skorba7q@jiathis.com', '3886 Northport Hill', '44695-000', 'Capim Grosso', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Thaddeus', 'Morfell', '02/06/1981', 1, '175-739-2056', 'tmorfell7r@csmonitor.com', '7680 Bowman Plaza', null, 'Linquan', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Agna', 'Leport', '09/15/1985', 3, '272-410-5926', 'aleport7s@intel.com', '991 Blackbird Junction', '4805-358', 'Ronfe', 'Braga', 'Portugal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Brenn', 'Noury', '01/26/1985', 4, '977-406-1936', 'bnoury7t@earthlink.net', '3 Michigan Court', '6419', 'San Vicente', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Hakim', 'Quene', '06/28/2005', 2, '416-304-8525', 'hquene7u@pbs.org', '4 Blaine Lane', '756 54', 'Zubří', null, 'Czech Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Chaddie', 'Slesser', '09/11/1999', 1, '848-381-2730', 'cslesser7v@marketwatch.com', '55 Sauthoff Alley', null, 'Pringgoboyo', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Idette', 'Griffey', '01/15/1995', 1, '891-222-5431', 'igriffey7w@so-net.ne.jp', '1151 Westport Avenue', null, 'Fulu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Celene', 'Lune', '06/01/1993', 2, '917-966-4498', 'clune7x@devhub.com', '593 Golf Course Alley', null, 'Tanggu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Faith', 'Addekin', '02/27/1968', 4, '880-715-3443', 'faddekin7y@etsy.com', '517 Clemons Alley', null, 'Cajacay', null, 'Peru');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Juliann', 'Polden', '10/28/1980', 2, null, 'jpolden7z@mayoclinic.com', '83441 Dottie Parkway', null, 'Jianshan', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Donall', 'Lipmann', '10/12/1977', 2, '501-620-3040', 'dlipmann80@addthis.com', '017 Golf Course Way', null, 'Dadapan', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Emory', 'Ierland', '05/11/2012', 4, '758-315-7196', null, '390 Kropf Road', '522508', 'Linares', null, 'Colombia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Oliy', 'Marlow', '11/13/2002', 4, '415-377-2242', 'omarlow82@wsj.com', '88648 Coleman Plaza', null, 'Erandique', null, 'Honduras');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cristiano', 'Thicking', '11/15/1997', 3, '505-523-2806', 'cthicking83@ft.com', '6336 Manley Drive', '4125', 'Banaba', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sidnee', 'Crinson', '04/28/2010', 4, null, 'scrinson84@about.me', '4623 Eagan Hill', null, 'Tanggulangin', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kathye', 'Glandfield', '05/13/1983', 1, '255-200-0227', 'kglandfield85@economist.com', '64546 Eliot Way', '78304 CEDEX', 'Poissy', 'Île-de-France', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Renata', 'Whyley', '04/24/1965', 3, '386-759-3443', 'rwhyley86@stumbleupon.com', '6134 Warbler Circle', '07-104', 'Stoczek', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Witty', 'Medlar', '01/05/2017', 1, '383-146-4077', 'wmedlar87@reuters.com', null, '3323', 'Cullalabo del Sur', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Nigel', null, '03/30/2013', 2, '356-848-2813', 'norum88@phpbb.com', '160 Vidon Park', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Antonius', 'Struan', '08/16/2014', 4, '402-791-6762', 'astruan89@networksolutions.com', '854 Lawn Junction', null, 'Gadingrejo', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Buck', 'Kernar', '07/01/1986', 1, null, null, '036 Mcguire Trail', '371 79', 'Karlskrona', 'Blekinge', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Elene', 'Milsom', '01/05/2002', 4, '199-878-9625', 'emilsom8b@washingtonpost.com', '11 Oakridge Way', null, 'Skála', null, 'Greece');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Chlo', 'Shearmur', '11/10/1998', 4, '609-454-3445', 'cshearmur8c@pbs.org', '3 Namekagon Pass', '59-706', 'Gromadka', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mallorie', 'Fries', '06/15/1994', 3, '517-748-6942', 'mfries8d@pbs.org', '0321 La Follette Hill', '6220', 'Bernardo Larroudé', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ranique', 'Hallatt', '05/15/2017', 3, '108-410-1352', 'rhallatt8e@yahoo.com', '6 Dapin Street', '40030', 'Nicolas Bravo', 'Guerrero', 'Mexico');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Marketa', 'Sandiford', '02/10/2014', 1, '260-934-0775', 'msandiford8f@imageshack.us', '4483 Oak Valley Terrace', '38-242', 'Skołyszyn', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Coleen', 'Scarasbrick', '01/07/2000', 4, '832-745-0680', 'cscarasbrick8g@indiegogo.com', '15 Saint Paul Road', null, 'Tangchi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Seth', 'Dieton', '07/18/1962', 4, '684-842-2063', 'sdieton8h@google.co.jp', '875 Dawn Road', null, 'Sridadi', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Hermine', 'Nagle', '06/17/2010', 2, '151-281-1287', null, '6142 Messerschmidt Avenue', null, 'Cihaur', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Giacobo', 'Comoletti', '11/20/1966', 1, '382-730-9683', 'gcomoletti8j@businessweek.com', '827 Division Junction', null, 'Dailekh', null, 'Nepal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mariann', 'Elsbury', '08/16/1991', 1, '822-663-4373', 'melsbury8k@github.io', '8108 Prairie Rose Street', '98-160', 'Sędziejowice', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Donnamarie', 'Bridger', '07/13/1961', 3, '297-762-7554', 'dbridger8l@blogspot.com', '27529 Northport Way', '05-230', 'Wesoła', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Linet', 'Valder', '07/11/2006', 2, '848-738-3920', 'lvalder8m@soup.io', '79876 Ronald Regan Parkway', '687 38', 'Nedakonice', null, 'Czech Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Henrik', 'Embury', '03/20/1973', 1, '464-486-0885', 'hembury8n@xrea.com', '000 Pine View Lane', '6305', 'Dimiao', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sheppard', 'Gonin', '01/09/1990', 2, '163-185-4742', 'sgonin8o@reference.com', '0 Spaight Trail', '4129', 'Tres Isletas', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rafaelita', 'Berns', '08/01/1962', 2, null, 'rberns8p@twitter.com', '53483 Sundown Circle', 'L-8356', 'Garnich', null, 'Luxembourg');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kiri', 'Salman', '09/23/1985', 1, '240-663-3360', 'ksalman8q@buzzfeed.com', '81 Sherman Circle', '973 41', 'Luleå', 'Norrbotten', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Stearn', 'Buckenham', '11/01/2000', 3, '410-980-1041', 'sbuckenham8r@stumbleupon.com', '99 Clyde Gallagher Road', '4570-308', 'Laúndos', 'Porto', 'Portugal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Corrie', 'Urwin', '01/27/1964', 3, '100-944-4783', 'curwin8s@prweb.com', '7545 Hagan Crossing', '50404 CEDEX', 'Granville', 'Basse-Normandie', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Pepito', 'Challenor', '04/21/2012', 4, '541-819-2814', 'pchallenor8t@naver.com', '03 Schlimgen Junction', '39-124', 'Iwierzyce', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Babb', 'Shay', '04/15/1998', 2, '127-767-1773', 'bshay8u@mysql.com', '88611 Kedzie Court', null, 'Sumberbatas', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mikol', 'Lawry', '12/29/1973', 1, null, 'mlawry8v@nationalgeographic.com', '98561 Kipling Lane', '162176', 'Ust’-Kut', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Berni', 'Tethacot', '01/05/1998', 4, null, 'btethacot8w@senate.gov', '0 Dottie Trail', '356 04', 'Dolní Rychnov', null, 'Czech Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Carley', 'Gossart', '11/01/2010', 1, '468-194-2534', 'cgossart8x@oaic.gov.au', '2 Prairie Rose Hill', '3103', 'Libas', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cully', 'Nolot', '06/14/2013', 4, null, 'cnolot8y@washingtonpost.com', '33 Buhler Terrace', '3838', 'Ulundi', null, 'South Africa');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Morissa', 'Sherburn', '06/01/1973', 4, '180-955-0109', 'msherburn8z@tinypic.com', '65 Holy Cross Drive', '11020 CEDEX', 'Carcassonne', 'Languedoc-Roussillon', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Giffie', 'Wiggett', '05/29/1961', 2, '689-760-1833', 'gwiggett90@gravatar.com', '8 Buena Vista Road', null, 'Ma‘lūlā', null, 'Syria');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Meghann', 'Hennemann', '01/18/2000', 4, '656-166-4851', 'mhennemann91@wsj.com', '06 Westport Junction', null, 'Kafr Şūr', null, 'Palestinian Territory');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Melania', 'Caney', '05/28/1971', 2, null, 'mcaney92@psu.edu', '17 Swallow Lane', null, 'Seteluk Tengah', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lissa', 'Bleything', '05/26/1978', 1, '405-689-6611', 'lbleything93@liveinternet.ru', '9 Darwin Point', '356126', 'Novotroitskaya', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Stephen', 'Turner', '01/20/1997', 4, '952-497-0453', null, '8 Meadow Ridge Circle', null, 'Nova Varoš', null, 'Serbia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Raleigh', 'Gibling', '07/31/2002', 2, null, null, '3 Buell Terrace', '07800', 'Lapinjärvi', null, 'Finland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Filia', 'Molan', '06/27/1970', 3, '340-641-9424', 'fmolan96@pagesperso-orange.fr', '2 2nd Parkway', '357380', 'Yutsa', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Athene', 'Conley', '02/08/1963', 1, '230-266-7777', 'aconley97@mediafire.com', '7655 Lyons Park', null, 'Limassol', null, 'Cyprus');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Quinton', 'Coneybeare', '06/24/1977', 1, '442-715-5238', 'qconeybeare98@mtv.com', '21 Menomonie Pass', '8707', 'Tambac', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Frances', 'Foro', '09/24/2013', 4, '375-782-5538', 'fforo99@t.co', '90 Grayhawk Way', null, 'Mangga Dua', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Louisa', 'Georgeson', '06/18/1971', 1, '425-936-3646', 'lgeorgeson9a@time.com', '38 Charing Cross Road', null, 'Ciudad Guayana', null, 'Venezuela');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bryana', 'McIlwain', '01/14/1986', 1, '590-837-0143', 'bmcilwain9b@xrea.com', '36143 Eagle Crest Way', null, 'Xinli', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Silvano', 'Scotchford', '08/27/1993', 2, '368-746-3528', 'sscotchford9c@typepad.com', '1076 Mcguire Terrace', '393028', 'Monchegorsk', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Keen', 'Pettingill', '04/19/2008', 2, '845-347-7026', 'kpettingill9d@guardian.co.uk', '1 Spohn Alley', null, 'Polje', null, 'Bosnia and Herzegovina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Raffarty', 'Whistlecraft', '01/21/1967', 1, '920-228-9322', 'rwhistlecraft9e@princeton.edu', '58825 Ohio Parkway', '5410', 'Calachuchi', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kristo', 'Markos', '12/18/2016', 2, '824-547-8693', 'kmarkos9f@netvibes.com', '05788 Spaight Plaza', null, 'Dasongshu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Stanislaus', 'Espinay', '05/30/1984', 4, '784-827-2120', 'sespinay9g@a8.net', '6 Redwing Trail', null, 'Yola', null, 'Nigeria');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Estella', 'Tremellan', '07/11/2004', 4, '906-808-9175', 'etremellan9h@amazonaws.com', '4630 Tomscot Avenue', '96400-000', 'Bagé', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Catrina', 'Velde', '05/04/1987', 2, '563-505-1963', 'cvelde9i@plala.or.jp', '57818 Dovetail Road', '3802', 'Lubuagan', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Fax', 'Narup', '05/28/1976', 1, null, 'fnarup9j@w3.org', '97452 Doe Crossing Way', '4312', 'Sandnes', 'Rogaland', 'Norway');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Arabela', 'Marzelle', '06/24/2010', 3, '503-844-7760', 'amarzelle9k@i2i.jp', '3577 Mifflin Point', '431355', 'Kovylkino', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jewell', 'Lubomirski', '08/30/1969', 4, '545-879-0225', 'jlubomirski9l@discuz.net', '16047 Calypso Hill', '3805', 'Tanudan', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Trace', 'Blaksley', '10/23/1979', 3, null, 'tblaksley9m@slashdot.org', '0947 Hayes Plaza', null, 'Hanyuan', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Merline', 'Eccott', '12/28/2012', 1, '741-705-0270', 'meccott9n@addtoany.com', '5631 Mifflin Court', '1074', 'Budapest', 'Budapest', 'Hungary');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lynnell', 'Godlee', '01/20/1993', 3, '890-165-5661', null, '546 Esch Place', null, 'Vithkuq', null, 'Albania');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dannie', 'Grinnell', '12/10/1978', 4, '225-621-0636', 'dgrinnell9p@smh.com.au', '0 Shasta Court', null, 'Antsirabe', null, 'Madagascar');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gardy', 'Clowes', '07/18/1989', 1, '916-233-4735', 'gclowes9q@princeton.edu', '72445 Randy Terrace', '95852', 'Sacramento', 'California', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Athena', 'Sprulls', '12/28/2003', 2, '436-896-3758', 'asprulls9r@list-manage.com', '431 Oak Valley Road', '1211', 'København', 'Region Hovedstaden', 'Denmark');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Julie', 'Borres', '03/06/1991', 2, '176-509-6043', 'jborres9s@about.me', '247 Lukken Drive', null, 'Plakhtiyivka', null, 'Ukraine');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Christophe', 'Fuxman', '09/15/1995', 3, '783-177-3637', null, '36520 Kinsman Parkway', null, 'Yingdianjie', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Aimee', 'Pernell', '06/04/1995', 4, '627-182-5034', 'apernell9u@chronoengine.com', '80164 Superior Alley', '98-432', 'Łubnice', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bernadine', 'Bygate', '10/24/2005', 1, '651-325-5236', 'bbygate9v@wikia.com', '92 Gulseth Court', '6100', 'Rufino', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Reggie', 'See', '06/19/1981', 1, '593-719-5208', 'rsee9w@psu.edu', '621 Dawn Circle', null, 'Guleluke', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ana', 'Mattersley', '12/25/2011', 1, '159-507-6277', 'amattersley9x@bizjournals.com', '16677 Cascade Junction', null, 'Perjuangan', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Essie', null, '12/20/1962', 3, '776-868-1754', 'emcmurtyr9y@vk.com', '20700 Dayton Park', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kris', 'Donner', '05/13/1962', 4, '565-895-0751', 'kdonner9z@hatena.ne.jp', '2096 Sauthoff Place', null, 'Codoi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Farrel', 'Carpenter', '09/03/1969', 2, null, 'fcarpentera0@blogger.com', '35 Bluejay Circle', null, 'Bočar', null, 'Serbia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Allistir', 'Mallia', '05/15/2009', 4, '989-799-0493', 'amalliaa1@hp.com', '9414 Tomscot Circle', null, 'Tangier', null, 'Morocco');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sean', 'Nelthropp', '08/20/1991', 3, '367-718-4829', 'snelthroppa2@java.com', '461 Grover Way', '56528', 'Adolfo Lopez Mateos', 'Mexico', 'Mexico');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Meara', 'Beert', '07/31/1964', 2, '565-734-5094', 'mbeerta3@last.fm', '2 American Pass', '91009 CEDEX', 'Évry', 'Île-de-France', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Willi', 'Rustan', '06/02/1985', 4, null, 'wrustana4@wufoo.com', '5762 Sycamore Hill', null, 'Ordzhonikidze', null, 'Kazakhstan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Auberta', 'Booi', '11/01/1968', 1, '180-471-0170', 'abooia5@wikipedia.org', '12189 Kropf Crossing', null, 'Nirgua', null, 'Venezuela');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Carl', 'Halsted', '01/21/1982', 4, '272-399-7304', 'chalsteda6@mysql.com', '8 Green Ridge Park', null, 'Saihan Tal', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Keelia', 'Mahaffey', '08/06/2003', 2, '330-119-4051', 'kmahaffeya7@csmonitor.com', '323 Anniversary Drive', '456811', 'Nizhniy Ufaley', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ruthann', 'Portman', '11/08/2011', 4, '245-221-4616', 'rportmana8@ow.ly', '718 Londonderry Place', 'AD600', 'Sant Julià de Lòria', null, 'Andorra');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Pearl', 'Matiebe', '11/18/2017', 1, '694-533-1560', 'pmatiebea9@elegantthemes.com', '5 Norway Maple Circle', '4100', 'Taganak', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Laurent', 'Caseri', '04/08/1971', 2, '701-856-6265', 'lcaseriaa@sina.com.cn', '92225 Lyons Parkway', null, 'Tonghong', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dee', 'Ponte', '01/26/1999', 2, '596-657-3831', 'dponteab@army.mil', '23 Dakota Way', '861-3937', 'Ise', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Libbi', 'Loddy', '07/12/1981', 3, '785-390-4302', 'lloddyac@purevolume.com', '48 Union Terrace', null, 'Weiyuan', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rici', 'Pennicard', '04/19/1973', 1, '109-817-3087', 'rpennicardad@fc2.com', '3 Hoard Plaza', null, 'Trinity', null, 'Saint Kitts and Nevis');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Washington', 'Heditch', '06/24/2007', 4, '338-211-1257', 'wheditchae@cdc.gov', '5 Susan Plaza', null, 'Kwikila', null, 'Papua New Guinea');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ozzie', 'Hamprecht', '11/07/1985', 1, '162-300-4060', 'ohamprechtaf@wikispaces.com', '1602 Hintze Crossing', '95193', 'Primero de Mayo', 'Veracruz Llave', 'Mexico');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bartolomeo', 'Christy', '12/12/1969', 2, '275-432-1332', 'bchristyag@blogtalkradio.com', '31554 Westport Road', null, 'Karang', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Olive', 'Courtier', '12/05/1981', 4, '880-189-9731', 'ocourtierah@loc.gov', '206 Katie Street', null, 'Jinji', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Moshe', 'Bowich', '09/12/1968', 2, '300-497-8541', 'mbowichai@bbc.co.uk', '43 Delladonna Way', null, 'Changqi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Henrieta', 'Boustred', '03/15/1978', 4, '181-889-9765', 'hboustredaj@state.tx.us', '81 Rigney Lane', null, 'Nkwerre', null, 'Nigeria');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Forester', 'Slyman', '05/15/2010', 4, '921-721-7092', 'fslymanak@shutterfly.com', '81922 Lerdahl Way', null, 'Kapsabet', null, 'Kenya');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jodie', 'Westerman', '03/22/1994', 3, '662-562-0840', 'jwestermanal@tamu.edu', '26 Grasskamp Point', '2705-085', 'Azenhas do Mar', 'Lisboa', 'Portugal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dyan', 'Ciciari', '04/16/1969', 3, '335-456-9670', null, '081 Orin Circle', '37795-000', 'Andradas', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ulrick', 'Hritzko', '09/29/1995', 1, '803-431-2591', 'uhritzkoan@photobucket.com', '18 Bluestem Parkway', '47640-000', 'Santa Maria da Vitória', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lambert', 'Dominik', '05/03/1989', 2, '273-477-8249', 'ldominikao@sakura.ne.jp', null, '75480 CEDEX 10', 'Paris 10', 'Île-de-France', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Park', 'Lambirth', '12/14/1966', 3, '217-842-1597', 'plambirthap@netlog.com', '9071 Muir Junction', null, 'Huangsangkou', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Vivianne', 'Tynan', '07/22/1984', 4, null, 'vtynanaq@springer.com', '78789 Troy Junction', null, 'Puente Alto', null, 'Chile');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Nadia', 'McCuaig', '09/22/1994', 3, '193-431-3808', 'nmccuaigar@livejournal.com', '26 Bluestem Crossing', '18-105', 'Suraż', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Morry', 'McCullogh', '01/01/1988', 3, '775-300-3042', 'mmcculloghas@devhub.com', '8 Oak Way', '901095', 'Atlasovo', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Joycelin', 'D''Antonio', '10/09/2017', 4, '446-691-0533', 'jdantonioat@ustream.tv', '0 Buena Vista Court', null, 'Lápas', null, 'Greece');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Valaria', 'Fonteyne', '11/07/1982', 3, '324-248-6175', 'vfonteyneau@plala.or.jp', '640 Morning Drive', '6711', 'Santo Niño', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wadsworth', 'Blogg', '12/20/1971', 2, '359-507-7793', 'wbloggav@businesswire.com', '2 Stoughton Street', '24053 CEDEX', 'Périgueux', 'Aquitaine', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gena', 'Preist', '10/20/1988', 1, '356-849-4541', 'gpreistaw@ow.ly', '8 Roxbury Lane', '8536', 'Valcheta', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Nessi', 'Yeldham', '06/06/2003', 3, '501-342-8891', 'nyeldhamax@cdbaby.com', '3 Golf Plaza', null, 'Kaliterus', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Hasty', 'Bernakiewicz', '09/18/1971', 4, '689-136-4709', 'hbernakiewiczay@irs.gov', '321 Oneill Road', '38110', 'Santa Cruz De Tenerife', 'Canarias', 'Spain');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sydelle', 'Lawful', '09/17/2001', 3, '721-308-9996', 'slawfulaz@jugem.jp', '79443 Twin Pines Pass', null, 'Qalqīlyah', null, 'Palestinian Territory');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rebecca', 'Candlin', '04/03/1966', 2, '369-992-1743', 'rcandlinb0@businessweek.com', '3429 North Trail', '08-109', 'Przesmyki', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Trevar', 'Carnduff', '07/31/1970', 2, '133-519-9410', 'tcarnduffb1@macromedia.com', '02256 High Crossing Junction', 'T23', 'Cork', null, 'Ireland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Haze', 'Donnersberg', '05/26/1967', 3, '818-507-1573', null, '01 Mcbride Park', null, 'Sumberdangdang', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gusella', null, '07/02/1963', 1, '107-293-9490', 'gtiltmanb3@ucoz.ru', '51 Southridge Junction', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dulciana', 'Nutton', '07/13/1986', 4, null, 'dnuttonb4@ebay.com', '10016 Park Meadow Point', '441-3155', 'Kosai-shi', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dominic', 'Linscott', '02/26/2002', 1, '944-858-4226', 'dlinscottb5@alexa.com', '45809 Mifflin Drive', null, 'Kuala Bintang', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rutger', 'Stanyforth', '08/14/1989', 3, '562-921-5571', 'rstanyforthb6@businessinsider.com', '8609 Gale Lane', '9713', 'Puricay', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sonni', 'Curphey', '02/02/1998', 4, '670-274-3598', 'scurpheyb7@goo.gl', '199 Maple Center', 'P36', 'Youghal', null, 'Ireland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kakalina', 'Drummond', '11/07/1961', 3, null, 'kdrummondb8@auda.org.au', '141 Montana Parkway', '134507', 'Río Viejo', null, 'Colombia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Leandra', 'Ells', '10/12/1971', 3, '473-408-0835', 'lellsb9@ebay.co.uk', '82573 Twin Pines Center', '205078', 'San Alberto', null, 'Colombia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Meridith', 'Donovin', '04/22/1985', 2, '507-277-0055', 'mdonovinba@delicious.com', '92 Ramsey Junction', null, 'Kebonagung', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dur', 'Bittleson', '07/27/1993', 3, '288-701-7515', 'dbittlesonbb@oracle.com', '21613 Duke Parkway', null, 'Guanshui', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cecilia', 'Tellenbrok', '09/28/1996', 3, '417-897-1419', null, null, '707-0112', 'Yono', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bernardine', 'Whaley', '08/17/2002', 4, '631-608-7091', 'bwhaleybd@twitter.com', '09480 Porter Point', null, 'Kuta', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Andreas', 'Szreter', '03/14/2012', 2, '513-976-2013', 'aszreterbe@hexun.com', '9301 Sutherland Plaza', '45296', 'Cincinnati', 'Ohio', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Auria', null, '10/25/1983', 2, null, 'aabelabf@storify.com', '16 Merry Point', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Hogan', 'Chown', '06/24/1990', 3, '849-314-6026', 'hchownbg@psu.edu', '22 Union Center', '43506', 'Dežanovac', null, 'Croatia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Peter', 'Gryglewski', '05/04/1966', 2, '204-257-7215', 'pgryglewskibh@irs.gov', '8332 Golden Leaf Avenue', 'J7R', 'Gjoa Haven', 'Nunavut', 'Canada');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Marguerite', 'Crosier', '02/28/2016', 3, '536-983-4544', 'mcrosierbi@engadget.com', '2 Old Gate Hill', '252 20', 'Helsingborg', 'Skåne', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Larisa', 'Moseby', '06/01/2005', 1, '326-212-0619', 'lmosebybj@cocolog-nifty.com', '438 Fairfield Crossing', null, 'Kajok', null, 'South Sudan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cherry', 'Aspital', '08/09/2010', 3, '169-773-8730', 'caspitalbk@mail.ru', '5276 Melby Lane', '943 36', 'Öjebyn', 'Norrbotten', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Otho', 'Goalby', '07/08/2015', 1, '250-338-8492', 'ogoalbybl@wunderground.com', '00 Crest Line Pass', '1194', 'Budapest', 'Budapest', 'Hungary');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Maible', 'Goodredge', '02/21/1999', 2, '862-844-2646', 'mgoodredgebm@google.co.jp', '4 Village Green Place', null, 'Jiangcun', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Elana', 'McKellen', '08/08/1987', 1, '109-930-2497', 'emckellenbn@adobe.com', '52627 Dryden Pass', '17690-000', 'Bastos', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Devland', 'Forst', '12/25/1978', 1, '576-625-5368', 'dforstbo@t-online.de', '30 Comanche Terrace', '11803', 'Punta Cana', null, 'Dominican Republic');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Blanche', 'Bennet', '12/26/1962', 3, null, 'bbennetbp@studiopress.com', '85456 Iowa Pass', '352812', 'Novyye Kuz’minki', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Amelita', 'Hirtzmann', '03/08/1985', 2, '545-748-7764', 'ahirtzmannbq@4shared.com', '574 Reinke Alley', null, 'Krajan Pundungsari', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Conrad', 'Dowdall', '05/03/1972', 1, '932-822-4226', 'cdowdallbr@com.com', '0650 Arkansas Trail', '8010', 'Tanlad', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Benedikta', 'Brumfitt', '04/23/2012', 2, '592-282-9690', 'bbrumfittbs@prnewswire.com', '4661 5th Drive', null, 'Sajan', null, 'Serbia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ulrikaumeko', 'Gianolo', '10/01/1988', 1, '124-245-3030', 'ugianolobt@unicef.org', '81922 Lakeland Court', '3116', 'Crespo', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dora', 'Proudman', '08/12/2013', 1, '903-510-8764', 'dproudmanbu@scribd.com', '1 Trailsway Circle', '389-1227', 'Nagano-shi', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jamesy', 'Lawtie', '05/04/1981', 3, '627-101-9342', 'jlawtiebv@youku.com', '8 Anzinger Place', '651 11', 'Karlstad', 'Värmland', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ruddie', 'Dilworth', '01/16/1997', 3, null, 'rdilworthbw@aol.com', '1499 4th Pass', '0906', 'Calubcub Dos', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kele', 'Lunny', '11/28/1969', 2, '604-842-3900', 'klunnybx@ezinearticles.com', '41 New Castle Drive', null, 'Quillo', null, 'Peru');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Maiga', 'Monan', '04/20/1970', 4, '516-993-0738', 'mmonanby@chron.com', '89477 Weeping Birch Park', '11024', 'Great Neck', 'New York', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wendell', 'Spours', '01/17/2001', 3, '929-378-4521', 'wspoursbz@macromedia.com', '179 Chinook Street', null, 'Shisandaogou', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jacquie', 'Wimp', '12/30/2003', 3, null, 'jwimpc0@home.pl', '3 Chive Road', null, 'Shuangshipu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Zenia', 'Ferrick', '05/17/2009', 2, '333-283-2196', 'zferrickc1@over-blog.com', '06929 Crowley Park', null, 'Kajisara', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Antonietta', 'Hellin', '06/30/2016', 3, null, 'ahellinc2@google.ca', '89 Eastlawn Point', null, 'Zhengchang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wilhelmina', 'Kondratenya', '05/08/1995', 1, '713-767-4945', 'wkondratenyac3@shareasale.com', '5225 Cascade Plaza', '99001', 'Silute', null, 'Lithuania');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Verile', 'Feldbrin', '08/05/1982', 3, '418-464-0712', 'vfeldbrinc4@ask.com', '8113 Fairfield Court', '1230', 'Gostivar', null, 'Macedonia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Putnam', 'Brabant', '05/05/2008', 4, '544-665-5912', 'pbrabantc5@bbb.org', '6 Barnett Way', null, 'Lau', null, 'Nigeria');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Julita', 'Smalcombe', '03/07/2017', 2, '399-884-2742', 'jsmalcombec6@qq.com', '446 Division Avenue', null, 'Yélimané', null, 'Mali');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Orsola', 'Paynton', '12/22/2009', 4, '841-929-9884', 'opayntonc7@ibm.com', '3 Portage Crossing', '45016 CEDEX 1', 'Orléans', 'Centre', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sonni', 'Jeyes', '03/17/1977', 1, '747-696-1629', 'sjeyesc8@infoseek.co.jp', '68 Merrick Center', null, 'Bāglung', null, 'Nepal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Desmond', 'Hannaway', '12/12/1988', 2, '797-150-1736', 'dhannawayc9@trellian.com', '0 Longview Pass', null, 'Khalīlābād', null, 'Iran');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lorelle', 'Brackpool', '10/31/2011', 4, '738-594-4787', 'lbrackpoolca@mayoclinic.com', '705 Village Hill', '05-604', 'Jasieniec', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Maxy', 'Bancroft', '09/07/1974', 3, '748-176-7707', 'mbancroftcb@usatoday.com', '798 Kedzie Alley', '363303', 'Beslan', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Reade', 'Lynch', '05/06/1993', 3, '338-703-4712', 'rlynchcc@sbwire.com', '8409 Sauthoff Junction', null, 'Hongqi Yingzi', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Isacco', 'Ainscow', '02/20/1965', 4, '448-746-7298', 'iainscowcd@toplist.cz', '493 Mcguire Pass', null, 'Kardhiq', null, 'Albania');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Caye', 'Dobrovsky', '11/24/1963', 4, '362-276-1357', 'cdobrovskyce@unc.edu', '558 Bay Street', '04-358', 'Laliki', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Harriott', 'Lenard', '12/23/1970', 4, '720-780-4004', 'hlenardcf@mysql.com', '5 Elka Trail', null, 'Īlām', null, 'Iran');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Den', 'Burnep', '08/22/1987', 3, null, 'dburnepcg@marriott.com', '00553 Amoth Hill', '13460-000', 'Nova Odessa', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jennee', 'Gamet', '07/29/1974', 1, '213-960-3140', 'jgametch@examiner.com', '57221 Killdeer Point', null, 'Sibiti', null, 'Republic of the Congo');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rooney', 'Nutting', '09/19/1977', 1, '380-321-3969', 'rnuttingci@wunderground.com', '75 Kennedy Trail', '32-060', 'Rzozów', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Buffy', 'Attwoull', '05/30/2007', 4, '446-264-3125', 'battwoullcj@facebook.com', '1 Park Meadow Road', null, 'Wuxihe', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Cybil', 'August', '07/30/1970', 1, '579-105-5530', 'caugustck@ted.com', '02512 Homewood Drive', '4650-291', 'Feitoria', 'Porto', 'Portugal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dori', 'Cotherill', '04/03/1974', 2, '483-949-1911', 'dcotherillcl@google.es', '9 Kipling Junction', null, 'Qinlan', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Alan', 'Trevena', '01/13/2016', 2, '657-492-2182', 'atrevenacm@tiny.cc', '476 Express Way', null, 'Tiandu', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Norton', 'Burkart', '05/26/1971', 2, '620-190-1729', 'nburkartcn@imgur.com', null, null, 'Cikadu', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Maudie', 'Jepson', '03/18/2005', 2, '444-381-5346', null, '4519 Onsgard Hill', '403800', 'Kotovo', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Ericka', 'Huntriss', '06/20/1985', 3, '679-791-1389', 'ehuntrisscp@opera.com', '0595 Golf Course Road', null, 'Xiamazhuang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Alleyn', 'Hindrich', '09/16/1997', 1, '603-394-0331', 'ahindrichcq@google.fr', '5311 Harper Road', null, 'Buçimas', null, 'Albania');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wallas', 'Vedeneev', '05/25/2008', 1, '375-307-2154', 'wvedeneevcr@zdnet.com', '45 Bobwhite Plaza', null, 'El Alto', null, 'Peru');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Pollyanna', 'Ridings', '07/25/2010', 2, '373-205-5451', 'pridingscs@cisco.com', '2 Corry Center', '5504', 'San Andres', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Shay', 'Hartle', '01/27/1983', 2, '843-944-9225', 'shartlect@dropbox.com', null, '400000', 'Vodstroy', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Pamella', 'Frantzen', '04/11/2001', 3, null, 'pfrantzencu@exblog.jp', '36 Declaration Point', '93608', 'Vista Hermosa', 'Veracruz Llave', 'Mexico');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Josi', 'Royce', '10/20/1986', 2, '183-106-7007', 'jroycecv@domainmarket.com', null, '87900-000', 'Loanda', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dunc', 'Minall', '04/20/2010', 3, '818-956-4280', 'dminallcw@wordpress.org', '654 Lunder Point', '3900', 'Basco', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Johnath', 'Aistrop', '12/19/1986', 3, '305-815-9449', 'jaistropcx@gmpg.org', '9652 Rieder Terrace', '34629', 'Clearwater', 'Florida', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Wilbert', 'Whyler', '10/04/1968', 3, '423-961-1662', 'wwhylercy@chron.com', '0777 Jana Lane', null, 'Banjar Asahduren', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Glenden', 'Lerohan', '02/05/1973', 2, '991-773-0855', 'glerohancz@washington.edu', '50 Magdeline Avenue', '2409', 'Alphen aan den Rijn', 'Provincie Zuid-Holland', 'Netherlands');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Camel', 'Huard', '11/20/1981', 1, '833-213-1827', 'chuardd0@sfgate.com', '1745 Jay Drive', null, 'Potongan', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Zondra', 'Rickardes', '11/23/2016', 2, '930-368-3914', 'zrickardesd1@mozilla.com', '215 La Follette Trail', '1114', 'Tumbagaan', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Rosemarie', 'Gribbell', '02/09/1962', 4, '970-391-1658', 'rgribbelld2@altervista.org', '700 Butternut Crossing', null, 'Oepula', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Normie', 'Saterthwait', '07/22/2009', 3, '711-719-9647', 'nsaterthwaitd3@moonfruit.com', '83565 Mayfield Place', null, 'Tengah', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Gussy', 'Bantham', '03/04/1988', 2, '276-808-4166', 'gbanthamd4@addthis.com', '04249 Scott Lane', null, 'Kujang', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Shannan', 'Mabee', '02/05/2005', 4, '915-505-9665', 'smabeed5@nba.com', '637 Tomscot Hill', null, 'Larache', null, 'Morocco');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Bibbye', 'Savaage', '05/15/1976', 3, '756-815-9836', 'bsavaaged6@illinois.edu', '8 Mesta Parkway', '839-1301', 'Sakurai', null, 'Japan');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Alisander', 'Brownhill', '08/04/1995', 4, '718-819-5180', 'abrownhilld7@blogtalkradio.com', '87489 Colorado Trail', null, 'Hashtpar', null, 'Iran');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Mervin', 'Sicha', '02/19/2003', 2, '269-600-9290', 'msichad8@cdc.gov', '22 Waubesa Avenue', null, 'Were Īlu', null, 'Ethiopia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Vivi', 'Wickwarth', '12/17/1979', 4, '421-879-9103', 'vwickwarthd9@adobe.com', '72 Cody Pass', null, 'Tagog', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Doy', 'Verma', '06/10/1961', 2, '619-390-0463', 'dvermada@people.com.cn', '57 5th Center', '92176', 'San Diego', 'California', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Fiona', null, '10/15/2004', 2, '273-928-4350', 'fnatondb@yahoo.co.jp', '087 Reinke Plaza', null, null, null, null);
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sawyer', 'Matteoli', '06/04/1977', 1, '521-649-4815', 'smatteolidc@weibo.com', '2 Blackbird Way', '5105', 'Santa Cruz', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Kacie', 'Goodhall', '09/06/1971', 1, '601-927-1658', 'kgoodhalldd@myspace.com', '29089 Hooker Pass', null, 'Lang', null, 'China');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Estella', 'Goodere', '03/08/2006', 2, '344-138-5200', 'egooderede@rambler.ru', '0 Donald Trail', '24400', 'Guadalupe', 'Campeche', 'Mexico');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Sapphire', 'Steger', '10/04/1995', 2, '257-532-6718', 'sstegerdf@bigcartel.com', '7 Grayhawk Alley', null, 'Lere', null, 'Nigeria');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Emeline', 'Beharrell', '05/25/1999', 1, '354-433-0528', 'ebeharrelldg@hud.gov', '6468 Graedel Way', '442 40', 'Kungälv', 'Västra Götaland', 'Sweden');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Brice', 'Hairsine', '12/30/1978', 3, '407-865-3869', null, '7150 Tennessee Center', '4653', 'Cerrillos', null, 'Argentina');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Jabez', 'Quartley', '11/09/1972', 1, '952-625-4579', null, '6280 Moulton Center', '55446', 'Minneapolis', 'Minnesota', 'United States');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Karena', 'Pirdy', '05/03/2002', 3, '713-986-5242', 'kpirdydj@odnoklassniki.ru', '592 Comanche Court', '9004', 'Claveria', null, 'Philippines');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Lizzy', 'Mealiffe', '02/10/1991', 3, '605-976-0993', 'lmealiffedk@eventbrite.com', '556 Loomis Terrace', '3810-760', 'Póvoa do Valado', 'Aveiro', 'Portugal');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Coop', 'Wartonby', '06/22/1974', 3, '181-587-2578', 'cwartonbydl@senate.gov', '14378 Walton Drive', null, 'Rosh Pinna', null, 'Israel');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Drud', 'Wollard', '12/21/1997', 3, '436-347-7789', null, '5 Shelley Alley', '606055', 'Pyra', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Constantine', 'Ruslinge', '06/25/2015', 3, '315-165-5125', 'cruslingedn@cafepress.com', '88 Portage Way', '21261', 'Runović', null, 'Croatia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dale', 'Chatainier', '02/09/1973', 1, '606-565-7393', 'dchatainierdo@ibm.com', '9 Magdeline Way', '05-090', 'Ochota', null, 'Poland');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Maridel', 'Haverty', '12/03/1965', 2, '980-214-7160', 'mhavertydp@liveinternet.ru', '01 Dorton Point', null, 'Al ‘Udayn', null, 'Yemen');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Fidole', 'MacClenan', '10/29/2005', 4, '814-105-7283', 'fmacclenandq@google.it', '7719 Fordem Trail', 'L-9640', 'Boulaide', null, 'Luxembourg');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Klaus', 'Terney', '05/10/1993', 1, '367-811-9495', 'kterneydr@amazonaws.com', '35 Tennyson Road', null, 'Pule', null, 'Indonesia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Eric', 'More', '08/02/2009', 3, '876-118-8324', 'emoreds@altervista.org', '504 Sommers Avenue', '187742', 'Vazhiny', null, 'Russia');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Dalila', 'Hasloch', '06/06/1987', 3, '952-128-0282', 'dhaslochdt@army.mil', '048 Bartelt Park', '74311 CEDEX', 'Cluses', 'Rhône-Alpes', 'France');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Amalee', 'Hintzer', '08/13/1970', 3, '125-211-8075', 'ahintzerdu@networksolutions.com', '691 Dryden Place', '55660-000', 'Bezerros', null, 'Brazil');
insert into Passenger (Firstname, Lastname, BirthDate, Gender, PhoneNo, Email, PostalAddress, ZipCode, City, County, Country) values ('Zorah', 'Suett', '06/30/1989', 4, '625-287-1881', 'zsuettdv@ibm.com', '21066 Thierer Terrace', '4615-310', 'Castanheira', 'Porto', 'Portugal');

select * 
FROM SwiftAirways..Passenger;

USE SwiftAirways

--Q1.	Select the surname (upper case), initial of the first name and address (in brackets) for all passengers. The result must be in this example format: “FINNY F. (2 Moni Road, M1 34P)”

select UPPER(Lastname) + ' ' + UPPER(LEFT(Firstname, 1)) + '. ' + '(' + PostalAddress + ', ' + Zipcode + ')'
From Passenger

--Q2.	Select all passengers who will be over 50 years of age in 5 years’ time.
select DATEDIFF(YYYY, Birthdate, GETDATE()) as [age], *
from Passenger
where DATEDIFF(YYYY, Birthdate, GETDATE()) + 5 > 50;

--Q3.	Find the longest and shortest passenger surnames.
select top(1) Lastname
from Passenger
where Lastname is not null
Order by len(Lastname) DESC


select top(1) Lastname
from Passenger
where Lastname is not null
Order by len(Lastname) ASC

--Q4
Select datename(WEEKDAY, Birthdate), *
from Passenger
where datename(WEEKDAY, Birthdate) in ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')

--Q5
select Min(DATEDIFF(YYYY, birthdate, GETDATE())) as [min age]
from Passenger


select City, Min(DATEDIFF(YYYY, birthdate, GETDATE())) as [min age]
from Passenger
group by (City)
